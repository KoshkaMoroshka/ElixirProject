defmodule ElixirProject.CharacterClasses.Commands.DeleteCharacterClass do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process(%CharacterClasses{} = characterClass) do
    Repo.delete(characterClass)
  end
end
