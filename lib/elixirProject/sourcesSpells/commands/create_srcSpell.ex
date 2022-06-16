defmodule ElixirProject.SourcesSpells.Commands.CreateSourceSpell do
  alias ElixirProject.Repo
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  def process(attrs) do
    %SourceSpell{}
    |> SourceSpell.create_changeset(attrs)
    |> Repo.insert()
  end
end
