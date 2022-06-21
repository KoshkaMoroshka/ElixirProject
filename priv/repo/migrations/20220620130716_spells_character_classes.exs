defmodule ElixirProject.Repo.Migrations.SpellsCharacterClasses do
  use Ecto.Migration


    def change do
      create table(:spellsCharacterClasses) do
        add :spell_id, references(:spells)
        add :characterClasses_id, references(:characterClasses)

        timestamps()
    end

      create unique_index(:spellsCharacterClasses, [:spell_id, :characterClasses_id])
  end
end
