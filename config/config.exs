# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wsbug,
  ecto_repos: [Wsbug.Repo]

# Configures the endpoint
config :wsbug, WsbugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T1KYD+worgU6f41puhEXLL7MGxP0fE8wHEGh2xwo7/ia47HFum5YIfG6jaypWqEa",
  render_errors: [view: WsbugWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Wsbug.PubSub,
  live_view: [signing_salt: "qh4VNE9v"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
