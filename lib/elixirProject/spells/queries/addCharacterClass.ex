defmodule ElixirProject.Spells.Queries.AddCharacterClass do
  alias ElixirProject.Repo
  alias SpellsCharactersClass

  def process(attrs) do
    %SpellsCharactersClass{}
    |> SpellsCharactersClass.changeset(attrs)
    |> Repo.insert()
  end
end
