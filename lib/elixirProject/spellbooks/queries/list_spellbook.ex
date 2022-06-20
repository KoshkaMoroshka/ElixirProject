defmodule ElixirProject.Spellbooks.Queries.ListSpellbook do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process() do
    Repo.all(Spellbook)
  end
end
