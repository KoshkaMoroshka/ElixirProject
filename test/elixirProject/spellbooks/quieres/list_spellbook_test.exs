defmodule ElixirProject.Accounts.Queries.ListUsersTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spellbooks

  @tag :listspellbook
  test "process/1 list_spellbook test" do
    insert_list(10, :spellbook)
    result = Spellbooks.list_spellbook()
    assert length(result) == 10
  end
end
