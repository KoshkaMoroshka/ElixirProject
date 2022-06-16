defmodule ElixirProject.MagickSchools.Entities.MagickSchools do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:nameSchool]

  schema "magickSchools" do
    field :nameSchool, :string

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = magickSchools, attrs) do
    magickSchools
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:nameSchool, message: "Such a school already exists")
  end

end
