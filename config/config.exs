# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :less_semantic_elm_phoenix,
  ecto_repos: [LessSemanticElmPhoenix.Repo]

# Configures the endpoint
config :less_semantic_elm_phoenix, LessSemanticElmPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4IMKtxoEx/WAp6lRFOqkU1rzv9Px10ta7ynDIig9fTMDy/yPiBw3Vis8Y1s7F6po",
  render_errors: [view: LessSemanticElmPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LessSemanticElmPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
