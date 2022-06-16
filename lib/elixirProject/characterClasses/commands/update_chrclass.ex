defmodule ElixirProject.CharacterClasses.Commands.UpdateCharacterClass do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process(%CharacterClasses{} = characterClass, attrs) do
    characterClass
    |> CharacterClasses.create_changeset(attrs)
    |> Repo.update()
  end
end
