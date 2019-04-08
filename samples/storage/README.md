# Storage

Sample application demonstrating functionality for the Google Cloud Platform, Storage API

Look in the [test](./test) dir for integration tests.

### Running the Tests

Google Cloud Platform Credentials will be required, as will some other configurations.

If you do not have a credentials json file, you [will need to create one](../README.md#obtaining-an-access-token).

Here are the environment variables currently in use
*(you would need to change to project, bucket, etc which you control)*.

```shell
export GOOGLE_APPLICATION_CREDENTIALS=/Users/yourname/yourpath/cred/service-user-account-gcp-123abc456def.json
export PROJECT_ID="elixir-g-api-samples"
export BUCKET="elixir-g-api-samples-persist"
mix deps.get
mix test
```

If you do not want to set these, you may override these configurations in each `samples/*/config/config.exs` files.


Read [Samples README](../README.md) for more information.
