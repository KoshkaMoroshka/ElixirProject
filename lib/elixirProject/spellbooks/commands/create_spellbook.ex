defmodule ElixirProject.Spellbooks.Commands.CreateSpellbook do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process(attrs) do
    %Spellbook{}
    |> Spellbook.create_changeset(attrs)
    |> Repo.insert()
  end
end
