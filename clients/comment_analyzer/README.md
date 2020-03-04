# GoogleApi.CommentAnalyzer

Perspective Comment Analyzer API client library.

The Perspective Comment Analyzer API provides information about the potential impact of a comment on a conversation (e.g. it can provide a score for the "toxicity" of a comment). Users can leverage the "SuggestCommentScore" method to submit corrections to improve Perspective over time. Users can set the "doNotStore" flag to ensure that all submitted comments are automatically deleted after scores are returned.

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_comment_analyzer` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_comment_analyzer, "~> 0.4"}]
end
```

## For more information

Product documentation is available at [https://github.com/conversationai/perspectiveapi/blob/master/README.md](https://github.com/conversationai/perspectiveapi/blob/master/README.md).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_comment_analyzer](https://hexdocs.pm/google_api_comment_analyzer).
