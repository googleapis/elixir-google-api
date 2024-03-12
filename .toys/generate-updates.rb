# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

desc "Run standard Google client generation."

flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
end
flag :approval_token, "--approval-token" do
  default ENV["APPROVAL_GITHUB_TOKEN"]
  desc "GitHub token for adding labels and approving pull requests"
end
flag :all do
  desc "Generate all APIs"
end
flag :clean do
  desc "Open a PR to clean out old APIs if needed"
end

remaining_args :requested do
  desc "Requested api names"
end

include :exec, e: true
include :git_cache
include :terminal

include "yoshi-pr-generator"

def run
  require "json"
  Dir.chdir context_directory

  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end

  @timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  setup_builds
  api_names = list_apis
  api_names.each_with_index do |entry, index|
    handle_package entry, index + 1, api_names.size
  end
end

def setup_builds
  exec ["mix", "deps.get"]
  exec ["mix", "compile"]
end

def list_apis
  return requested unless all
  api_list = JSON.parse File.read "#{context_directory}/config/apis.json"
  api_list.map { |entry| entry["publish"] == false ? nil : entry["name"] }.uniq.compact.shuffle
end

def handle_package api_name, index, total
  branch_name = "gen/#{api_name}-#{@timestamp}"
  commit_message = "feat: Automated regeneration of #{api_name} client"
  if open_pr_exists? commit_message
    puts "(#{index}/#{total}) Pull request already exists for #{api_name}", :yellow
    return
  end
  approval_message = "Rubber-stamped client auto-generation!"
  result = yoshi_pr_generator.capture enabled: !git_remote.nil?,
                                      remote: git_remote,
                                      branch_name: branch_name,
                                      commit_message: commit_message,
                                      labels: ["automerge"],
                                      cooldown_wait: 15,
                                      auto_approve: approval_message,
                                      approval_token: approval_token do
    generate_package api_name
  end
  case result
  when Integer
    puts "(#{index}/#{total}) Opened pull request #{result} for #{api_name}", :green, :bold
  when :unchanged
    puts "(#{index}/#{total}) No changes for #{api_name}", :magenta
  else
    puts "(#{index}/#{total}) Generated #{api_name}", :cyan
  end
end

def open_pr_exists? title
  content = capture ["gh", "pr", "list", "--search", "\"#{title}\" in:title", "--state=open", "--json=number"]
  !JSON.parse(content).empty?
end

def generate_package api_name
  lower_api_name = api_name.gsub(/([A-Z]+)([A-Z][a-z])/, "\\1_\\2").gsub(/([a-z0-9])([A-Z])/, "\\1_\\2").downcase
  exec ["mix", "google_apis.generate", api_name]
  unless capture(["git", "status", "--porcelain", "clients/#{lower_api_name}"]).empty?
    exec ["mix", "google_apis.bump_version", api_name]
  end
end
