defmodule ElixirProject.Accounts.Queries.GetUser do
  alias ElixirProject.Repo
  alias ElixirProject.Accounts.Entities.User

  def process(id) do
    Repo.find(User, id)
  end
end
