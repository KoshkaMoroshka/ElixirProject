defmodule ElixirProject.Spellbooks.Queries.GetSpellbook do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process(id) do
    Repo.find(Spellbook, id)
  end
end
