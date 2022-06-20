defmodule ElixirProject.Repo.Migrations.Spellbooks do
  use Ecto.Migration

  def change do
    create table(:spellBooks) do
      add :nameSpellbook, :string, null: false
      add :user_id, references(:users)

      timestamps()
    end

    create unique_index(:spellBooks, :nameSpellbook)
  end
end
