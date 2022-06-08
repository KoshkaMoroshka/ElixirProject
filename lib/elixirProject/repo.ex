defmodule ElixirProject.Repo do
  use Ecto.Repo,
    otp_app: :elixirProject,
    adapter: Ecto.Adapters.Postgres
end
