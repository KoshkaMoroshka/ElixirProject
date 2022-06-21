defmodule ElixirProject.Spells.Queries.GetSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  def process(id) do
    Repo.find(Spell, id)
  end
end
