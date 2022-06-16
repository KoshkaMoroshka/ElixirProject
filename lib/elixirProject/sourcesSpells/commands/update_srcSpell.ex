defmodule ElixirProject.SourcesSpells.Commands.UpdateSourceSpell do
  alias ElixirProject.Repo
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  def process(%SourceSpell{} = sourceSpell, attrs) do
    sourceSpell
    |> SourceSpell.create_changeset(attrs)
    |> Repo.update()
  end
end
