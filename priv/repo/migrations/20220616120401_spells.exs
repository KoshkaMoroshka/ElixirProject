defmodule ElixirProject.Repo.Migrations.Spells do
  use Ecto.Migration

  def change do
    create table(:spells) do
      add :nameSpell, :string, null: false
      add :level, :integer, null: false
      add :castingTime, :string, null: false
      add :duration, :string, null: false
      #add :


      timestamps()
    end

    create unique_index(:spells, :nameSpell)
  end
end
