defmodule ElixirProject.MagickSchool.Queries.GetMagickSchool do
  alias ElixirProject.Repo
  alias ElixirProject.MagickSchools.Entities.MagickSchools

  def process(id) do
    Repo.find(MagickSchools, id)
  end
end
