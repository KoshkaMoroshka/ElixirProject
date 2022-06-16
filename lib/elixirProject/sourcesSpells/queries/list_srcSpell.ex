defmodule ElixirProject.SourcesSpells.Queries.ListSourceSpell do
  alias ElixirProject.Repo
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  def process() do
    Repo.all(SourceSpell)
  end
end
