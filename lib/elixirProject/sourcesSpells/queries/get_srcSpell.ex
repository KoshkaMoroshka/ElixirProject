defmodule ElixirProject.SourcesSpells.Queries.GetSourceSpell do
  alias ElixirProject.Repo
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  def process(id) do
    Repo.find(SourceSpell, id)
  end
end
