defmodule ElixirProject.Accounts.Queries.ListSpellsTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spells

  @tag :listspell
  test "process/1 list_spellbook test" do
    insert_list(10, :spell)
    result = Spells.Queries.ListSpell.process(%{})
    assert length(result.entries) == 10
  end
end
