defmodule ElixirProject.Accounts.Commands.DeleteSpellbookTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :deletespellbook
  test "process/1 delete_spelbook test" do
    spellbook = insert(:spellbook)
    assert {:ok, _result} = Spellbooks.delete_spellbook(spellbook)
    assert {:error, :not_found} = Spellbooks.get_spellbook(spellbook.id)
  end
end
