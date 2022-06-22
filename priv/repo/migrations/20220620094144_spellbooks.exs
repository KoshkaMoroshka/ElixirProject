defmodule ElixirProject.Repo.Migrations.Spellbooks do
  use Ecto.Migration

  def change do
    create table(:spellbooks) do
      add :name_spellbook, :string, null: false
      add :user_id, references(:users)

      timestamps()
    end

    create unique_index(:spellbooks, :name_spellbook)
  end
end
