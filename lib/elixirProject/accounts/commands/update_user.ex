defmodule ElixirProject.Accounts.Commands.UpdateUser do
  alias ElixirProject.Repo
  alias ElixirProject.Accounts.Entities.User

  def process(%User{} = user, attrs) do
    user
    |> User.update_changeset(attrs)
    |> Repo.insert()
  end
end
