defmodule ElixirProject.Accounts.Entities.User do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:login, :password, :email]

  schema "users" do
    field :email, EmailEctoType
    field :login, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:email, message: "Already registered to this address")
    |> unique_constraint(:login, message: "This login already exists")
    |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/, message: "Does not meet the requirements")
    |> put_password_hash()
  end

  defp put_password_hash(%{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end

  defp put_password_hash(changeset), do: changeset
end
