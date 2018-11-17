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

defmodule GoogleApi.TestClient.V2.Api.Objects do
  @moduledoc """
  API calls for all endpoints tagged `Objects`.
  """

  alias GoogleApi.TestClient.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Batch write object metadata

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - name (String.t): Required. The name of the bucket where the objects belong. The format is &#x60;b/[BUCKET]&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :body (Container): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec objects_batch_write(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def objects_batch_write(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/test/v2/{+name}/o:batchWrite", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false, data_wrapped: true])
  end

  @doc """
  Deletes an object

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - object (String.t): object&#39;s id
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec objects_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def objects_delete(connection, bucket, object, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/test/v2/b/{bucket}/o/{object}", %{
        "bucket" => URI.encode_www_form(bucket),
        "object" => URI.encode_www_form(object)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false, data_wrapped: true])
  end

  @doc """
  Gets a single object by Id.

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - id (integer()): The object id
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :category ([String.t]): The category of the items. Must match all.

  ## Returns

  {:ok, %GoogleApi.TestClient.V2.Model.Container{}} on success
  {:error, info} on failure
  """
  @spec objects_get(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, GoogleApi.TestClient.V2.Model.Container.t()} | {:error, Tesla.Env.t()}
  def objects_get(connection, bucket, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :category => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/test/v2/b/{bucket}/o/{id}", %{
        "bucket" => URI.encode_www_form(bucket),
        "id" => id
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.TestClient.V2.Model.Container{}, data_wrapped: true]
    )
  end

  @doc """
  Stores a new object and metadata

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :name (String.t): Name of the object. Required when the object metadata is not otherwise provided.
    - :body (Container): 

  ## Returns

  {:ok, %GoogleApi.TestClient.V2.Model.Container{}} on success
  {:error, info} on failure
  """
  @spec objects_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.TestClient.V2.Model.Container.t()} | {:error, Tesla.Env.t()}
  def objects_insert(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :name => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/test/v2/b/{bucket}/o", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.TestClient.V2.Model.Container{}, data_wrapped: true]
    )
  end

  @doc """
  Stores a new object and metadata

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :name (String.t): Name of the object. Required when the object metadata is not otherwise provided.
    - :body (Container): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec objects_insert_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def objects_insert_resumable(connection, bucket, upload_type, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :name => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/v2/b/{bucket}/o", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false, data_wrapped: true])
  end

  @doc """
  Stores a new object and metadata

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (Container): Container metadata.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :name (String.t): Name of the object. Required when the object metadata is not otherwise provided.

  ## Returns

  {:ok, %GoogleApi.TestClient.V2.Model.Container{}} on success
  {:error, info} on failure
  """
  @spec objects_insert_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.TestClient.V2.Model.Container.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.TestClient.V2.Model.Container.t()} | {:error, Tesla.Env.t()}
  def objects_insert_simple(
        connection,
        bucket,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :name => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v2/b/{bucket}/o", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.TestClient.V2.Model.Container{}, data_wrapped: true]
    )
  end

  @doc """
  Fetch a data-wrapped object

  ## Parameters

  - connection (GoogleApi.TestClient.V2.Connection): Connection to server
  - bucket (String.t): Name of the bucket where the object is stored
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.

  ## Returns

  {:ok, %GoogleApi.TestClient.V2.Model.Container{}} on success
  {:error, info} on failure
  """
  @spec objects_wrapped(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.TestClient.V2.Model.Container.t()} | {:error, Tesla.Env.t()}
  def objects_wrapped(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/test/v2/b/{bucket}/wrapped", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.TestClient.V2.Model.Container{}, data_wrapped: true]
    )
  end
end
