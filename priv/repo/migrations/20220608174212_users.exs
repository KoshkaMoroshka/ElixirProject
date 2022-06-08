defmodule ElixirProject.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string, null: false
      add :password_hash, :string
      add :email, :string, null: false

      timestamps()
    end

    create unique_index(:users, [:login])
    create unique_index(:users, [:email])
  end
end
