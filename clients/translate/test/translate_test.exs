defmodule GoogleApi.Translate.TranslateTest do
  use GoogleApi.Translate.TestHelper

  test "translate" do
    conn = GoogleApi.Translate.V2.Connection.new(&for_scope/1)

    req = %GoogleApi.Translate.V2.Model.TranslateTextRequest{
      format: "text",
      model: "nmt",
      q: "The quick brown fox jumped over the lazy dog.",
      source: "en",
      target: "es"
    }
    {:ok, resp} = GoogleApi.Translate.V2.Api.Translations.language_translations_translate(conn, body: req)

    assert %GoogleApi.Translate.V2.Model.TranslationsListResponse{} = resp
  end
end
