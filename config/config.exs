# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :readable_api,
  ecto_repos: [ReadableApi.Repo]

# Configures the endpoint
config :readable_api, ReadableApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BFOi55aPitLNW9ILq0sOZVD/590NWq64OJ6cblt2ZpezO1nlwoKeLeweBW9hsVqS",
  render_errors: [view: ReadableApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReadableApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
