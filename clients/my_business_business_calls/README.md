# GoogleApi.MyBusinessBusinessCalls

My Business Business Calls API client library.

The My Business Business Calls API manages business calls information of a location on Google and collect insights like the number of missed calls to their location. Additional information about Business calls can be found at https://support.google.com/business/answer/9688285?p=call_history. If the Google Business Profile links to a Google Ads account and call history is turned on, calls that last longer than a specific time, and that can be attributed to an ad interaction, will show in the linked Google Ads account under the "Calls from Ads" conversion. If smart bidding and call conversions are used in the optimization strategy, there could be a change in ad spend. Learn more about smart bidding. To view and perform actions on a location's calls, you need to be a `OWNER`, `CO_OWNER` or `MANAGER` of the location.

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_my_business_business_calls` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_my_business_business_calls, "~> 0.2"}]
end
```

## For more information

Product documentation is available at [https://developers.google.com/my-business/](https://developers.google.com/my-business/).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_my_business_business_calls](https://hexdocs.pm/google_api_my_business_business_calls).
