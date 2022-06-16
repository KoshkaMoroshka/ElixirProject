defmodule ElixirProject.MagickSchools.Commands.UpdateMagickSchool do
  alias ElixirProject.Repo
  alias ElixirProject.MagickSchools.Entities.MagickSchools

  def process(%MagickSchools{} = magickSchool, attrs) do
    magickSchool
    |> MagickSchools.create_changeset(attrs)
    |> Repo.update()
  end
end
