defmodule ElixirProject.Spellbooks.Commands.CreateSpellbookTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :createspellbooks
  test "process/1 create spellbook" do
    user = insert(:user)
    assert {:ok, create_spellbook} = Spellbooks.create_spellbook( %{name_spellbook: "JoinTheArmySon", user_id: user.id})
    {status, get_spellbook} = Spellbooks.get_spellbook(create_spellbook.id)
    assert get_spellbook.id == create_spellbook.id
  end
end
