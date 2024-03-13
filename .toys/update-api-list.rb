# Copyright 2024 Google LLC
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

desc "Update the API list from discovery"

flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
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
  update_api_list
end

def setup_builds
  exec ["mix", "deps.get"]
  exec ["mix", "compile"]
end

def update_api_list
  branch_name = "action/auto-update-api-list"
  commit_message = "chore: Automatic update of apis.json"
  if open_pr_exists? commit_message
    puts "Pull request already exists", :yellow
    return
  end

  result = yoshi_pr_generator.capture enabled: !git_remote.nil?,
                                      remote: git_remote,
                                      branch_name: branch_name,
                                      commit_message: commit_message do
    run_update
  end

  case result
  when Integer
    puts "Opened pull request #{result}", :green, :bold
  when :unchanged
    puts "No changes", :magenta
  else
    puts "Generated API list", :cyan
  end
end

def open_pr_exists? title
  content = capture ["gh", "pr", "list", "--search", "\"#{title}\" in:title", "--state=open", "--json=number"]
  !JSON.parse(content).empty?
end

def run_update
  exec ["mix", "google_apis.discover_update", "apis.json"]
end
