defmodule ElixirProject.CharacterClasses.Commands.CreateCharacterClasses do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process(attrs) do
    %CharacterClasses{}
    |> CharacterClasses.create_changeset(attrs)
    |> Repo.insert()
  end
end
