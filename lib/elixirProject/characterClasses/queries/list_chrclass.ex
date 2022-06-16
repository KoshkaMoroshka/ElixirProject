defmodule ElixirProject.CharacterClasses.Queries.ListCharacterClass do
  alias ElixirProject.Repo
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  def process() do
    Repo.all(CharacterClasses)
  end
end
