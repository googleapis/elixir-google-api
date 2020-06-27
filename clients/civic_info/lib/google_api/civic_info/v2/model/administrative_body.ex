# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CivicInfo.V2.Model.AdministrativeBody do
  @moduledoc """
  Information about an election administrative body (e.g. County Board of Elections).

  ## Attributes

  *   `absenteeVotingInfoUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body for information on absentee voting.
  *   `ballotInfoUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body to give contest information to the voter.
  *   `correspondenceAddress` (*type:* `GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t`, *default:* `nil`) - The mailing address of this administrative body.
  *   `electionInfoUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body for looking up general election information.
  *   `electionOfficials` (*type:* `list(GoogleApi.CivicInfo.V2.Model.ElectionOfficial.t)`, *default:* `nil`) - The election officials for this election administrative body.
  *   `electionRegistrationConfirmationUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body for confirming that the voter is registered to vote.
  *   `electionRegistrationUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body for looking up how to register to vote.
  *   `electionRulesUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body describing election rules to the voter.
  *   `hoursOfOperation` (*type:* `String.t`, *default:* `nil`) - A description of the hours of operation for this administrative body.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this election administrative body.
  *   `physicalAddress` (*type:* `GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t`, *default:* `nil`) - The physical address of this administrative body.
  *   `voter_services` (*type:* `list(String.t)`, *default:* `nil`) - A description of the services this administrative body may provide.
  *   `votingLocationFinderUrl` (*type:* `String.t`, *default:* `nil`) - A URL provided by this administrative body for looking up where to vote.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :absenteeVotingInfoUrl => String.t(),
          :ballotInfoUrl => String.t(),
          :correspondenceAddress => GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t(),
          :electionInfoUrl => String.t(),
          :electionOfficials => list(GoogleApi.CivicInfo.V2.Model.ElectionOfficial.t()),
          :electionRegistrationConfirmationUrl => String.t(),
          :electionRegistrationUrl => String.t(),
          :electionRulesUrl => String.t(),
          :hoursOfOperation => String.t(),
          :name => String.t(),
          :physicalAddress => GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t(),
          :voter_services => list(String.t()),
          :votingLocationFinderUrl => String.t()
        }

  field(:absenteeVotingInfoUrl)
  field(:ballotInfoUrl)
  field(:correspondenceAddress, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType)
  field(:electionInfoUrl)
  field(:electionOfficials, as: GoogleApi.CivicInfo.V2.Model.ElectionOfficial, type: :list)
  field(:electionRegistrationConfirmationUrl)
  field(:electionRegistrationUrl)
  field(:electionRulesUrl)
  field(:hoursOfOperation)
  field(:name)
  field(:physicalAddress, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType)
  field(:voter_services, type: :list)
  field(:votingLocationFinderUrl)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.AdministrativeBody do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.AdministrativeBody.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.AdministrativeBody do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
