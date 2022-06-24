defmodule ElixirProject.Spells.Commands.DeleteSpellTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spells

  @tag :deletespell
  test "process/1 delete_spell test" do
    spell = insert(:spell)
    assert {:ok, _result} = Spells.Commands.DeleteSpell.process(spell)
    assert {:error, :not_found} = Spells.Queries.GetSpell.process(spell.id)
  end
end
