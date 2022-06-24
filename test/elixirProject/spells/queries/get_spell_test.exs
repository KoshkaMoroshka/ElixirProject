defmodule ElixirProject.Accounts.Queries.GetSpellTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spells

  @tag :getspell
  test "process/1 get spell by id" do
    spell = insert(:spell)
    assert {:ok, result} = Spells.Queries.GetSpell.process(spell.id)
    assert spell.id == result.id
  end
end
