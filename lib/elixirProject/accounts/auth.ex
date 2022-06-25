defmodule ElixirProject.Accounts.Auth do
  alias ElixirProject.Accounts.Entities.User
  alias ElixirProject.Accounts.Services.Guardian

  def sign_user(%User{} = user) do
    with {:ok, access_token, refresh_token} <- Guardian.sign(user) do
      {:ok, access_token, refresh_token}
    end
  end
end
