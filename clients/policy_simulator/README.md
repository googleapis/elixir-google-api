# GoogleApi.PolicySimulator

Policy Simulator API client library.

 Policy Simulator is a collection of endpoints for creating, running, and viewing a Replay. A `Replay` is a type of simulation that lets you see how your members' access to resources might change if you changed your IAM policy. During a `Replay`, Policy Simulator re-evaluates, or replays, past access attempts under both the current policy and your proposed policy, and compares those results to determine how your members' access might change under the proposed policy.

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_policy_simulator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_policy_simulator, "~> 0.3"}]
end
```

## For more information

Product documentation is available at [https://cloud.google.com/iam/docs/simulating-access](https://cloud.google.com/iam/docs/simulating-access).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_policy_simulator](https://hexdocs.pm/google_api_policy_simulator).
