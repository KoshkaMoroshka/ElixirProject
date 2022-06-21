defmodule ElixirProject.Spells.Commands.UpdateSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  def process(%Spell{} = spell, attrs) do
    spell
    |> Spell.create_changeset(attrs)
    |> Repo.update()
  end
end
