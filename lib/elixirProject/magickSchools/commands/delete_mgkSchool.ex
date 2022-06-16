defmodule ElixirProject.MagickSchools.Commands.DeleteMagickSchool do
  alias ElixirProject.Repo
  alias ElixirProject.MagickSchools.Entities.MagickSchools

  def process(%MagickSchools{} = magickSchool) do
    Repo.delete(magickSchool)
  end
end
