defmodule ElixirProject.Accounts.Commands.CreateUser do
  alias ElixirProject.Repo
  alias ElixirProject.Accounts.Entities.User

  def process(attrs) do
    %User{}
    |> User.create_changeset(attrs)
    |> Repo.insert()
  end
end
