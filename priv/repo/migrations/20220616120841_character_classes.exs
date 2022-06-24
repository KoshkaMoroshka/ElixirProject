defmodule ElixirProject.Repo.Migrations.CharacterClasses do
  use Ecto.Migration

  def change do
    create table(:character_classes) do
      add :nameClass, :string, null: false

      timestamps()
    end

    create unique_index(:character_classes, :nameClass)
  end
end
