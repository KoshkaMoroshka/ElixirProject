defmodule ElixirProject.MagickSchool.Queries.ListMagickSchool do
  alias ElixirProject.Repo
  alias ElixirProject.MagickSchools.Entities.MagickSchools

  def process() do
    Repo.all(MagickSchools)
  end
end
