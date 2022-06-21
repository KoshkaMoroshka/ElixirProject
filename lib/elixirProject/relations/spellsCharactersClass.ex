defmodule SpellsCharactersClass do
  use Ecto.Schema

  alias ElixirProject.Spells.Entities.Spell
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  @primary_key false
  schema "spellsCharacterClasses" do
    belongs_to :spell, Spell
    belongs_to :characterClasses, CharacterClasses

    # Added bonus, a join schema will also allow you to set timestamps
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:spell_id, :characterClasses_id])
    |> Ecto.Changeset.validate_required([:spell_id, :characterClasses_id])
  end
end
