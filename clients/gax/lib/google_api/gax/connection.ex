defmodule GoogleApi.Gax.Connection do
  def execute(connection, request) do
    request
    |> build_request
    |> (&Tesla.request(connection, &1)).()
  end

  @spec build_request(map()) :: keyword()
  def build_request(request) do
    [url: request.url, method: request.method]
    |> build_query(request.query)
    |> build_headers(request.header)
    |> build_body(request.body, request.file)
  end

  defp build_query(output, []), do: output
  defp build_query(output, query_params) do
    Keyword.put(output, :query, query_params)
  end

  defp build_headers(output, []), do: output
  defp build_headers(output, header_params) do
    Keyword.put(output, :headers, header_params)
  end

  defp build_body(output, [], []), do: output
  defp build_body(output, body_params, []) do
    Keyword.put(output, :body, body_params)
  end
  defp build_body(output, [], file_params) do
    body = Enum.reduce(file_params, Tesla.Multipart.new, fn {file_name, file_path}, b ->
      Tesla.Multipart.add_file(b, file_path, name: file_name)
    end)

    Keyword.put(output, :body, body)
  end
  defp build_body(output, body_params, file_params) do
    encoded_body =
      body_params
      |> Enum.into(%{})
      |> Poison.encode!

    body =
      Tesla.Multipart.new
      |> Tesla.Multipart.add_field(:body, encoded_body, headers: [{:"Content-Type", "application/json"}])

    body = Enum.reduce(file_params, body, fn {file_name, file_path}, b ->
      Tesla.Multipart.add_file(b, file_path, name: file_name)
    end)

    Keyword.put(output, :body, body)
  end
end
