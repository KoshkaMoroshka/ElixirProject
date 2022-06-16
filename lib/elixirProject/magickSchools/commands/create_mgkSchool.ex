defmodule ElixirProject.MagickSchools.Commands.CreateMagickSchool do
  alias ElixirProject.Repo
  alias ElixirProject.MagickSchools.Entities.MagickSchools

  def process(attrs) do
    %MagickSchools{}
    |> MagickSchools.create_changeset(attrs)
    |> Repo.insert()
  end
end
