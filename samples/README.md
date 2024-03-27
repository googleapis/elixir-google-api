The samples in this directory serve two main purposes.

1. They are examples of how to integrate these client libraries into your projects.
2. They are integration tests, verifying basic functionality with google APIs.

## Samples as Example of how to Integrate

Look through the provided samples here.

More samples are available [GoogleCloudPlatform/elixir-samples](https://github.com/GoogleCloudPlatform/elixir-samples).

Feel free to add a new sample, or extend an existing sample if you like.
*(Read our [contributing guidelines](../CONTRIBUTING.md))*

## Samples as Integration Tests

Each sample *(subdir)* should have it's integrations triggered by `mix test`.

A comprehensive test script is available in the `samples` directory: [run_all_tests.sh](./run_all_tests.sh)

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

