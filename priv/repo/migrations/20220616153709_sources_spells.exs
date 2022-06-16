defmodule ElixirProject.Repo.Migrations.SourcesSpells do
  use Ecto.Migration

  def change do

    create table(:sourcesSpells) do
      add :nameSource, :string, null: false

      timestamps()
    end

    create unique_index(:sourcesSpells, :nameSource)
  end
end
