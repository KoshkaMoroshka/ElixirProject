defmodule ElixirProject.Spells.Queries.AddCharacterClass do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process(%CharacterClasses{} = character_classes, attrs) do
    character_classes
    |> CharacterClasses.add_characterClasses_changeset(attrs)
    |> Repo.update()
  end
end
