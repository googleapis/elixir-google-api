# Copyright 2018 Google LLC
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

"""This script is used to synthesize generated parts of this library."""

from synthtool.__main__ import extra_args
from synthtool import _tracked_paths
import synthtool as s
import synthtool.log as log
import synthtool.shell as shell
import synthtool.sources.git as git
import logging
import sys

logging.basicConfig(level=logging.DEBUG)

repository_url = "https://github.com/googleapis/elixir-google-api.git"

log.debug(f"Cloning {repository_url}.")
repository = git.clone(repository_url, depth=1)
shell.run(["git", "clean", "-fdx"], cwd=repository / "clients")

image = "gcr.io/cloud-devrel-public-resources/elixir16"
generate_command = "scripts/generate_client.sh"
command = [
    "docker",
    "run",
    "--rm",
    f"-v{repository}:/workspace",
    "-v/var/run/docker.sock:/var/run/docker.sock",
    "-w", "/workspace",
    image,
    generate_command]

if extra_args():
    command.extend(extra_args())

log.debug(f"Running: {' '.join(command)}")

shell.run(command, cwd=repository)

# copy all clients
s.copy(repository / "clients")
