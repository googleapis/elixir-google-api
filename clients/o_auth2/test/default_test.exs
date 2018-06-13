defmodule GoogleApi.Storage.StorageTest do
  use GoogleApi.OAuth2.V2.TestHelper

  test "oauth" do
    scopes = [
      "https://www.googleapis.com/auth/plus.login", # Know the list of people in your circles, your age range, and language
      "https://www.googleapis.com/auth/plus.me", # Know who you are on Google
      "https://www.googleapis.com/auth/userinfo.email", # View your email address
      "https://www.googleapis.com/auth/userinfo.profile"
    ]
    token = for_scope(scopes)
    conn = GoogleApi.OAuth2.V2.Connection.new(token)

    {:ok, info} = GoogleApi.OAuth2.V2.Api.Default.oauth2_tokeninfo(conn, [access_token: token])

    found_scopes = String.split(info.scope)
    assert Enum.all?(found_scopes, fn scope ->
      Enum.member?(scopes, scope)
    end)

    assert Enum.all?(scopes, fn scope ->
      Enum.member?(found_scopes, scope)
    end)
  end
end
