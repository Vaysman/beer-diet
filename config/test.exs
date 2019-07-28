use Mix.Config

# Configure your database
config :beet_diet, BeetDiet.Repo,
  username: "postgres",
  password: "postgres",
  database: "beet_diet_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :beet_diet, BeetDietWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
