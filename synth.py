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
import logging
import os
import pathlib
import shutil
import tempfile

logging.basicConfig(level=logging.DEBUG)
s.metadata.set_track_obsolete_files(False)  # TODO: enable again.

# Copy the repo into a temporary directory, removing the build and deps, and
# perform generation there. This is because the docker command may be a
# cross-compile whose build environment should be isolated from the current
# git clone.
with tempfile.TemporaryDirectory() as tmpdir:
    repository = pathlib.Path(tmpdir) / "repo"
    shutil.copytree(os.getcwd(), repository)
    shutil.rmtree(repository / "_build", ignore_errors=True)
    shutil.rmtree(repository / "deps", ignore_errors=True)

    image = "gcr.io/cloud-devrel-public-resources/elixir19"
    generate_command = "scripts/generate_client.sh"
    command = [
        "docker",
        "run",
        "--rm",
        f"-v{repository}:/workspace",
        "-v/var/run/docker.sock:/var/run/docker.sock",
        "-e", f"USER_GROUP={os.getuid()}:{os.getgid()}",
        "-w", "/workspace",
        image,
        generate_command]

    if extra_args():
        command.extend(extra_args())

    log.debug(f"Running: {' '.join(command)}")

    shell.run(command, cwd=repository, hide_output=False)

    # Copy the resulting clients directory back into the git clone.
    shutil.rmtree("clients", ignore_errors=True)
    shutil.move(repository / "clients", "clients")
