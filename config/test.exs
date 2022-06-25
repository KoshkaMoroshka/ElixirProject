import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :elixirProject, ElixirProject.Repo,
  username: "postgres",
  password: "poher456",
  hostname: "localhost",
  database: "elixirproject_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixirProject, ElixirProjectWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "JucxPIxCAedVQUT0sCajj33nUt14LEMfvsmbdJ/Cc01dgAGwjgBmPrlKzZRUcGsl",
  server: false

# In test we don't send emails.
config :elixirProject, ElixirProject.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :elixirProject, ElixirProject.Accounts.Services.Guardian,
secret_key: "1nMyPjRqz/nCDuYGs5mjw8DXXem2L/UFkP/fcbzFSWINmxP++wIVZckNPof4mLQm"
