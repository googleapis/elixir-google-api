# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Testing.V1.Model.AndroidInstrumentationTest do
  @moduledoc """
  A test of an Android application that can control an Android component
  independently of its normal lifecycle.
  Android instrumentation tests run an application APK and test APK inside the
  same process on a virtual or physical AndroidDevice.  They also specify
  a test runner class, such as com.google.GoogleTestRunner, which can vary
  on the specific instrumentation framework chosen.

  See <http://developer.android.com/tools/testing/testing_android.html> for
  more information on types of Android tests.

  ## Attributes

  - appApk (GoogleApi.Testing.V1.Model.FileReference.t): The APK for the application under test. Defaults to `nil`.
  - appBundle (GoogleApi.Testing.V1.Model.AppBundle.t): A multi-apk app bundle for the application under test. Defaults to `nil`.
  - appPackageId (String.t): The java package for the application under test.
  The default value is determined by examining the application's manifest. Defaults to `nil`.
  - orchestratorOption (String.t): The option of whether running each test within its own invocation of
  instrumentation with Android Test Orchestrator or not.
  ** Orchestrator is only compatible with AndroidJUnitRunner version 1.0 or
  higher! **
  Orchestrator offers the following benefits:
  - No shared state
  - Crashes are isolated
  - Logs are scoped per test

  See
  <https://developer.android.com/training/testing/junit-runner.html#using-android-test-orchestrator>
  for more information about Android Test Orchestrator.

  If not set, the test will be run without the orchestrator. Defaults to `nil`.
  - testApk (GoogleApi.Testing.V1.Model.FileReference.t): Required. The APK containing the test code to be executed. Defaults to `nil`.
  - testPackageId (String.t): The java package for the test to be executed.
  The default value is determined by examining the application's manifest. Defaults to `nil`.
  - testRunnerClass (String.t): The InstrumentationTestRunner class.
  The default value is determined by examining the application's manifest. Defaults to `nil`.
  - testTargets (list(String.t)): Each target must be fully qualified with the package name or class name,
  in one of these formats:
  - "package package_name"
  - "class package_name.class_name"
  - "class package_name.class_name#method_name"

  If empty, all targets in the module will be run. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appApk => GoogleApi.Testing.V1.Model.FileReference.t(),
          :appBundle => GoogleApi.Testing.V1.Model.AppBundle.t(),
          :appPackageId => String.t(),
          :orchestratorOption => String.t(),
          :testApk => GoogleApi.Testing.V1.Model.FileReference.t(),
          :testPackageId => String.t(),
          :testRunnerClass => String.t(),
          :testTargets => list(String.t())
        }

  field(:appApk, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:appBundle, as: GoogleApi.Testing.V1.Model.AppBundle)
  field(:appPackageId)
  field(:orchestratorOption)
  field(:testApk, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:testPackageId)
  field(:testRunnerClass)
  field(:testTargets, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.AndroidInstrumentationTest do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.AndroidInstrumentationTest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.AndroidInstrumentationTest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
