defmodule ElixirProject.Spellbooks do
  alias ElixirProject.Spellbooks.Commands.{
    CreateSpellbook,
    DeleteSpellbook,
    UpdateSpellbook
  }

  alias ElixirProject.Spellbooks.Queries.{
    GetSpellbook,
    ListSpellbook,
    AddSpell
  }

  # Commands
  defdelegate create_spellbook(attrs), to: CreateSpellbook, as: :process
  defdelegate delete_spellbook(spellbook), to: DeleteSpellbook, as: :process
  defdelegate update_spellbook(spellbook, attrs), to: UpdateSpellbook, as: :process

  # Queries
  defdelegate get_spellbook(id), to: GetSpellbook, as: :process
  defdelegate list_spellbook(), to: ListSpellbook, as: :process
  defdelegate add_spell(spellAndSpellbooksId), to: AddSpell, as: :process

end
