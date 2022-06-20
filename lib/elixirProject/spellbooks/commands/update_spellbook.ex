defmodule ElixirProject.Spellbooks.Commands.UpdateSpellbook do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process(%Spellbook{} = spellbook, attrs) do
    spellbook
    |> Spellbook.create_changeset(attrs)
    |> Repo.update()
  end
end
