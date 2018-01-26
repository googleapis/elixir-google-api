defmodule GoogleApi.YouTube.VideoCategoriesTest do
  use GoogleApi.YouTube.TestHelper

  test "video categories" do
    conn = GoogleApi.YouTube.V3.Connection.new(&for_scope/1)
    part = "snippet"
    region_code = "US"
    {:ok, resp} = GoogleApi.YouTube.V3.Api.VideoCategories.youtube_video_categories_list(conn, part, regionCode: region_code)

    assert %GoogleApi.YouTube.V3.Model.VideoCategoryListResponse{} = resp
  end
end
