defmodule ElixirProject.CharacterClasses.Entities.CharacterClasses do
  use Ecto.Schema
  import Ecto.Changeset

  alias ElixirProject.Spells.Entities.Spell
  alias SpellsCharactersClass

  @required [:nameClass]

  schema "characterClasses" do
    field :nameClass, :string

    many_to_many :spells, Spell, join_through: SpellsCharactersClass

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = characterClasses, attrs) do
    characterClasses
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:nameClass, message: "Such a character class already exists")
  end

end
