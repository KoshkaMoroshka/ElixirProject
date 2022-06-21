defmodule ElixirProject.Spells.Commands.DeleteSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  def process(%Spell{} = spell) do
    Repo.delete(spell)
  end
end
