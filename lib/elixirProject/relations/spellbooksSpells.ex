defmodule SpellsSpellbooks do
  use Ecto.Schema

  alias ElixirProject.Spellbooks.Entities.Spellbook
  alias ElixirProject.Spells.Entities.Spell

  @primary_key false
  schema "spells_in_spellbooks" do
    belongs_to :spellbook, Spellbook
    belongs_to :spell, Spell

    # Added bonus, a join schema will also allow you to set timestamps
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:spellbook_id, :spell_id])
    |> Ecto.Changeset.validate_required([:spellbook_id, :spell_id])
  end
end
