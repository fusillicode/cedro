# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cedro,
  ecto_repos: [Cedro.Repo]

# Configures the endpoint
config :cedro, Cedro.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vreJhX5GxX9Wzj9Z7a9MvIUhu2mk/zb4XHFpIyWVCI656SAiWOBbz3ovgPe2fkFk",
  render_errors: [view: Cedro.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cedro.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
