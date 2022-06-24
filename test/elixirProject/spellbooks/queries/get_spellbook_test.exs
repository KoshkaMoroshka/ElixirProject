defmodule ElixirProject.Spellbooks.Queries.GetSpellbookTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :getspellbook
  test "process/1 get spellbook by id" do
    spellbook = insert(:spellbook)
    assert {:ok, result} = Spellbooks.get_spellbook(spellbook.id)
    assert spellbook.id == result.id
  end
end
