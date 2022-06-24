defmodule ElixirProject.Repo.Migrations.SpellsInSpellbooks do
  use Ecto.Migration

    def change do
      create table(:spells_in_spellbooks) do
        add :spellbook_id, references(:spellbooks)
        add :spell_id, references(:spells), on_delete: :delete_all

        timestamps()
    end

      create unique_index(:spells_in_spellbooks, [:spellbook_id, :spell_id])
  end
end
