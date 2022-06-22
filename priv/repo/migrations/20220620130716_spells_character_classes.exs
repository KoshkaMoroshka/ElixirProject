defmodule ElixirProject.Repo.Migrations.SpellsCharacterClasses do
  use Ecto.Migration


    def change do
      create table(:spells_character_classes, primary_key: false) do
        add :spell_id, references(:spells), null: false, primary_key: true
        add :characterClasses_id, references(:characterClasses), null: false, primary_key: true

        timestamps()
    end

      create unique_index(:spells_character_classes, [:spell_id, :characterClasses_id])
  end
end
