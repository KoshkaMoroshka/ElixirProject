defmodule ElixirProject.Spellbooks.Commands.UpdateSpellbookTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :updatespellbooks
  test "process/1 update_spellbook test" do
    spellbook = insert(:spellbook)
    attrs = %{name_spellbook: "NetMamka", users: spellbook.user}
    assert {:ok, updated_spellbook} = Spellbooks.update_spellbook(spellbook, attrs)
    assert updated_spellbook.name_spellbook == attrs.name_spellbook
  end
end
