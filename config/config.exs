# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :beet_diet,
  ecto_repos: [BeetDiet.Repo]

# Configures the endpoint
config :beet_diet, BeetDietWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tetbKjdIG0X/0dL276S9ZPd9CtIkGlXbmBZvLDlXS0Y6UuINPGvaUwfQZet70wfZ",
  render_errors: [view: BeetDietWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BeetDiet.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "LuFZ4oiJ5av/vxa6WogCmk/QhatlEPwc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
