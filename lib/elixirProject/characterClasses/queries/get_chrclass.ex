defmodule ElixirProject.CharacterClasses.Queries.GetCharacterClass do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process(id) do
    Repo.find(CharacterClasses, id)
  end
end
