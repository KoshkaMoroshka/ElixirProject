defmodule ElixirProject.SourcesSpells.Entities.SourceSpell do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:nameSource]

  schema "sourcesSpells" do
    field :nameSource, :string

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = sourcesSpells, attrs) do
    sourcesSpells
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:nameSource, message: "Such a source already exists")
  end

end
