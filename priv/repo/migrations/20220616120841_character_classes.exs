defmodule ElixirProject.Repo.Migrations.CharacterClasses do
  use Ecto.Migration

  def change do
    create table(:characterClasses) do
      add :nameClass, :string, null: false

      timestamps()
    end

    create unique_index(:characterClasses, :nameClass)
  end
end
