defmodule ElixirProject.Repo.Migrations.Spells do
  use Ecto.Migration

  def change do
    create table(:spells) do
      add :nameSpell, :string, null: false
      add :level, :integer, null: false
      add :castingTime, :string, null: false
      add :duration, :string, null: false
      # add :characterClass_id, references(:characterClasses)
      add :magickSchool_id, references(:magickSchools)
      add :sourceSpell_id, references(:sourcesSpells)
      add :description, :string


      timestamps()
    end

    create unique_index(:spells, :nameSpell)
  end
end
