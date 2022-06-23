defmodule ElixirProject.Accounts.Commands.CreateUserTest do
  use ElixirProject.DataCase

  alias ElixirProject.Accounts

  @tag :createusers
  test "process/1 create user" do

    assert {:ok, create_user} = Accounts.create_user(%{email: "Padla@mail.ru", login: "BomBom", password: "LolKek23"})
    {status, get_user} = Accounts.get_user(create_user.id)
    assert get_user.id == create_user.id
  end
end
