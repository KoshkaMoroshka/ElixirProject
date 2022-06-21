defmodule ElixirProject.Spells.Entities.Spell do
  use Ecto.Schema

  import Ecto.Changeset

  alias ElixirProject.CharacterClasses.Entities.CharacterClasses
  alias ElixirProject.MagickSchools.Entities.MagickSchools
  alias ElixirProject.SourcesSpells.Entities.SourceSpell
  alias SpellsCharactersClass
  alias ElixirProject.Repo

  @required [
    :nameSpell,
    :level,
    :castingTime,
    :duration,
    :magickSchool_id,
    :sourceSpell_id,
  ]

  schema "spells" do
    field :nameSpell, :string
    field :level, :integer
    field :castingTime, :string
    field :duration, :string
    belongs_to :magickSchool, MagickSchools
    belongs_to :sourceSpell, SourceSpell
    field :description, :string

    many_to_many :characterClasses, CharacterClasses, join_through: SpellsCharactersClass

    timestamps()
  end

  def create_changeset(%__MODULE__{} = spell, attrs) do
    spell
    |> Repo.preload(:characterClasses)
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> assoc_constraint(:magickSchool)
    |> assoc_constraint(:sourceSpell)
    # Set the association
    |> put_assoc(:characterClasses, [attrs.characterClasses])
  end


#ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, description: "hahahahahahah"})
#{a,b} = ElixirProject.MagickSchool.Queries.GetMagickSchool.process(1)
#{c,d} = ElixirProject.SourcesSpells.Queries.GetSourceSpell.process(2)
#ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, characterClasses_id: [chrClass.id, chrClass2.id], description: "hahahahahahah"})
end
