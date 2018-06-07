#!/bin/bash

set -ex

# run generator tests
mix test --include external

# run gax tests
pushd clients/gax
mix deps.get
mix test
mix dialyzer --halt-exit-status
popd

# create the test client
mix do google_apis.convert TestClient, google_apis.build TestClient
pushd clients/test_client
mix deps.get
mix test
mix dialyzer --halt-exit-status
popd