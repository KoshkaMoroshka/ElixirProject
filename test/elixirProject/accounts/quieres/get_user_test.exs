defmodule ElixirProject.Accounts.Queries.GetUserTest do
  use ElixirProject.DataCase

  alias ElixirProject.Accounts

  @tag :getusers
  test "process/1 get user by id" do
    user = insert(:user) |> IO.inspect
    Accounts.get_user(user.id)
    assert {:ok, result} = Accounts.get_user(user.id)
    assert user.id == result.id
  end
end
