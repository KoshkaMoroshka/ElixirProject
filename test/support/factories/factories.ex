defmodule ElixirProject.Factories do
  use ExMachina.Ecto, repo: ElixirProject.Repo

  use ElixirProject.Factories.{
    Accounts.UserFactory,
    Spellbooks.SpelbookFactory
  }
end
