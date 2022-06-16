defmodule ElixirProject.SourcesSpells.Commands.DeleteSourceSpell do
  alias ElixirProject.Repo
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  def process(%SourceSpell{} = sourceSpell) do
    Repo.delete(sourceSpell)
  end
end
