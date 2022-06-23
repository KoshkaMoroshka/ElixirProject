defmodule ElixirProject.Accounts.Queries.GetSpellbookTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :getusers
  test "process/1 get spellbook by id" do
    spellbook = insert(:spellbook) |> IO.inspect
    assert {:ok, result} = Spellbooks.get_spellbook(spellbook.id)
    assert spellbook.id == result.id
  end
end
