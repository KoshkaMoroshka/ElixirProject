defmodule ElixirProject.Spells.Queries.ListSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  def process() do
    Repo.all(Spell)
  end
end
