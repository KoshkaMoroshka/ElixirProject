defmodule SpellsCharactersClass do
  use Ecto.Schema

  alias ElixirProject.Spells.Entities.Spell
  alias ElixirProject.CharacterClasses.Entities.CharacterClasses

  @primary_key false
  schema "spells_character_classes" do
    belongs_to :spell, Spell, primary_key: true
    belongs_to :character_classes, CharacterClasses, primary_key: true

    # Added bonus, a join schema will also allow you to set timestamps
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:spell_id, :character_classes_id])
    |> Ecto.Changeset.validate_required([:spell_id, :character_classes_id])
  end
end
