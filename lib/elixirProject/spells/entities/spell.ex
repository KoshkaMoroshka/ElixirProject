defmodule ElixirProject.Spells.Entities.Spell do
  use Ecto.Schema

  import Ecto.Changeset

  alias ElixirProject.CharacterClasses.Entities.CharacterClasses
  alias ElixirProject.MagickSchools.Entities.MagickSchools
  alias ElixirProject.SourcesSpells.Entities.SourceSpell

  @required [
    :nameSpell,
    :level,
    :castingTime,
    :duration,
    :sourceSpell_id
  ]

  schema "spells" do
    field :nameSpell, :string
    field :level, :integer
    field :castingTime, :string
    field :duration, :string
    belongs_to :magickSchool_id, MagickSchools
    belongs_to :sourceSpell_id, SourceSpell
    field :description, :string


    timestamps()
  end

  # def create_changeset(%__MODULE__{} = charlist, attrs) do
  #   charlist
  #   |> cast(attrs, @required)
  #   |> validate_required(@required)
  #   |> validate_number(:wisdom, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> validate_number(:strenght, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> validate_number(:dexterity, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> validate_number(:charisma, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> validate_number(:constitution, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> validate_number(:intelligence, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
  #   |> assoc_constraint(:user)
  #   |> unique_constraint(:nickname)
  # end
end
