defmodule ElixirProject.CharacterClasses.Entities.CharacterClasses do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:nameClass]

  schema "characterClasses" do
    field :nameClass, :string

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
