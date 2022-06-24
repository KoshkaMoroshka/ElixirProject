defmodule ElixirProject.CharacterClasses.Entities.CharacterClasses do
  use Ecto.Schema
  import Ecto.Changeset

  alias ElixirProject.Spells.Entities.Spell
  alias SpellsCharactersClass
  alias ElixirProject.Repo

  @required [:nameClass]

  schema "character_classes" do
    field :nameClass, :string

    many_to_many :spells, Spell, join_through: SpellsCharactersClass

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = character_classes, attrs) do
    character_classes
    |> Repo.preload(:spells)
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:nameClass, message: "Such a character class already exists")
  end

end
