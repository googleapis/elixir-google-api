# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Storage.V1.Model.ObjectAccessControl do
  @moduledoc """
  An access-control entry.

  ## Attributes

  - bucket (String.t): The name of the bucket. Defaults to: `null`.
  - domain (String.t): The domain associated with the entity, if any. Defaults to: `null`.
  - email (String.t): The email address associated with the entity, if any. Defaults to: `null`.
  - entity (String.t): The entity holding the permission, in one of the following forms:  - user-userId  - user-email  - group-groupId  - group-email  - domain-domain  - project-team-projectId  - allUsers  - allAuthenticatedUsers Examples:  - The user liz@example.com would be user-liz@example.com.  - The group example@googlegroups.com would be group-example@googlegroups.com.  - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com. Defaults to: `null`.
  - entityId (String.t): The ID for the entity, if any. Defaults to: `null`.
  - etag (String.t): HTTP 1.1 Entity tag for the access-control entry. Defaults to: `null`.
  - generation (String.t): The content generation of the object, if applied to an object. Defaults to: `null`.
  - id (String.t): The ID of the access-control entry. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For object access control entries, this is always storage#objectAccessControl. Defaults to: `null`.
  - object (String.t): The name of the object, if applied to an object. Defaults to: `null`.
  - projectTeam (BucketAccessControlProjectTeam):  Defaults to: `null`.
  - role (String.t): The access permission for the entity. Defaults to: `null`.
  - selfLink (String.t): The link to this access-control entry. Defaults to: `null`.
  """

  defstruct [
    :bucket,
    :domain,
    :email,
    :entity,
    :entityId,
    :etag,
    :generation,
    :id,
    :kind,
    :object,
    :projectTeam,
    :role,
    :selfLink
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ObjectAccessControl do
  import GoogleApi.Storage.V1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :projectTeam,
      :struct,
      GoogleApi.Storage.V1.Model.BucketAccessControlProjectTeam,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ObjectAccessControl do
  def encode(value, options) do
    GoogleApi.Storage.V1.Deserializer.serialize_non_nil(value, options)
  end
end
