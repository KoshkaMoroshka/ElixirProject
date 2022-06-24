defmodule ElixirProject.Spellbooks.Queries.AddSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process(%Spellbook{} = spellbook, attrs) do
    spellbook
    |> Spellbook.add_spell_changeset(attrs)
    |> Repo.update()
  end
end
