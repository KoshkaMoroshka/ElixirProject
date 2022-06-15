defmodule ElixirProject.Accounts.Commands.DeleteUser do
  alias ElixirProject.Repo
  alias ElixirProject.Accounts.Entities.User

  def process(%User{} = user) do
    Repo.delete(user)
  end
end
