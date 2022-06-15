defmodule ElixirProject.Accounts.Queries.ListUsers do
  alias ElixirProject.Repo
  alias ElixirProject.Accounts.Entities.User

  def process() do
    Repo.all(User)
  end
end
