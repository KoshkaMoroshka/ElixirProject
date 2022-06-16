defmodule ElixirProject.Repo.Migrations.MagickSchools do
  use Ecto.Migration

  def change do
    create table(:magickSchools) do
      add :nameSchool, :string, null: false

      timestamps()
    end

    create unique_index(:magickSchools, :nameSchool)
  end
end
