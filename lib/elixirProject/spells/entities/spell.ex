defmodule ElixirProject.Spells.Entities.Spell do
  use Ecto.Schema

  import Ecto.Changeset

  alias ElixirProject.CharacterClasses.Entities.CharacterClasses
  alias ElixirProject.MagickSchools.Entities.MagickSchools
  alias ElixirProject.SourcesSpells.Entities.SourceSpell
  alias ElixirProject.Spellbooks.Entities.Spellbook
  alias SpellsCharactersClass
  alias SpellsSpellbooks
  alias ElixirProject.Repo

  @required [
    :nameSpell,
    :level,
    :castingTime,
    :duration,
    :magickSchool_id,
    :sourceSpell_id,
  ]

  @optional [
    :description
  ]

  schema "spells" do
    field :nameSpell, :string
    field :level, :integer
    field :castingTime, :string
    field :duration, :string
    belongs_to :magickSchool, MagickSchools
    belongs_to :sourceSpell, SourceSpell
    field :description, :string

    many_to_many :character_classes, CharacterClasses, join_through: SpellsCharactersClass
    many_to_many :spellbooks, Spellbook, join_through: SpellsSpellbooks

    timestamps()
  end

  def create_changeset(%__MODULE__{} = spell, attrs) do
    spell
    |> Repo.preload(:character_classes)
    |> Repo.preload(:magickSchools)
    |> Repo.preload(:sourceSpells)
    |> cast(attrs, @required ++ @optional)
    |> validate_required(@required)
    |> assoc_constraint(:magickSchool)
    |> assoc_constraint(:sourceSpell)
    # Set the association
    |> put_assoc(:character_classes, attrs.character_classes)
  end


  def add_characterClasses_changeset(%__MODULE__{} = spell, attrs) do
    spell
    |> Repo.preload(:character_classes)
    |> Ecto.Changeset.change()
    |> put_assoc(:character_classes, attrs.character_classes)
  end
end
