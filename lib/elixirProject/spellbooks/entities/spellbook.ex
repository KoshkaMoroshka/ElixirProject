defmodule ElixirProject.Spellbooks.Entities.Spellbook do
  use Ecto.Schema

  import Ecto.Changeset

  alias ElixirProject.Accounts.Entities.User
  alias ElixirProject.Spells.Entities.Spell
  alias SpellsSpellbooks
  alias ElixirProject.Repo

  @required [
    :name_spellbook,
    :user_id
  ]

  schema "spellbooks" do
    field :name_spellbook, :string
    belongs_to :user, User

    many_to_many :spells, Spell, join_through: SpellsSpellbooks

    timestamps()
  end

  def create_changeset(%__MODULE__{} = spellbook, attrs) do
    spellbook
    |> Repo.preload(:user)
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:name_spellbook, messgae: "The name of such a spellbook already exists")
    |> assoc_constraint(:user)
  end

  def add_spell_changeset(%__MODULE__{} = spellbook, attrs) do
    spellbook
    |> Repo.preload(:spells)
    |> Ecto.Changeset.change()
    |> put_assoc(:spells, attrs.spells)
  end

end
