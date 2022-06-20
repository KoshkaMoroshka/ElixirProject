defmodule ElixirProject.Spellbooks.Entities.Spellbook do
  use Ecto.Schema

  import Ecto.Changeset

  alias ElixirProject.Accounts.Entities.User

  @required [
    :nameSpellbook,
    :user_id
  ]

  schema "spellBooks" do
    field :nameSpellbook, :string
    belongs_to :user, User

    timestamps()
  end

  def create_changeset(%__MODULE__{} = spellbook, attrs) do
    spellbook
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:nameSpellbook, messgae: "The name of such a spellbook already exists")
    |> assoc_constraint(:user)
  end

end
