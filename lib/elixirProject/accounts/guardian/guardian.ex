defmodule ElixirProject.Accounts.Services.Guardian do
  use Guardian, otp_app: :elixirProject

  alias ElixirProject.Accounts
  alias ElixirProject.Accounts.Entities.User
  alias ElixirProject.Changeset.Error

  def sign(%User{} = user) do
    with {:ok, access_token} <- create_access_token(user),
         {:ok, refresh_token} <- create_refresh_token(user) do
      {:ok, access_token, refresh_token}
    end
  end

  def current_user(conn) do
    case Guardian.Plug.current_resource(conn) do
      nil -> {:error, :not_authorized}
      user -> {:ok, user}
    end
  end

  #   def user_id_from_token(token) do
  #     case Guardian.decode_and_verify(token) do
  #       {:ok, %{"sub" => "User:" <> id}} -> {:ok, String.to_integer(id)}
  #       _ -> {:error, :wrong_token}
  #     end
  #   end

  def subject_for_token(%User{id: id} = _user, _claims) do
    {:ok, "User:#{id}"}
  end

  def subject_for_token(_, _), do: {:error, Error.auth_error("Unknown resource type")}

  def resource_from_claims(%{"sub" => "User:" <> id}) do
    Accounts.get_user(id)
  end

  def resource_from_claims(_), do: {:error, Error.auth_error("Unhandled resource type")}

  defp create_access_token(user) do
    options = [token_type: :access, ttl: {1, :day}]
    {:ok, token, _claims} = encode_and_sign(user, %{}, options)
    {:ok, token}
  end

  defp create_refresh_token(user) do
    options = [token_type: :refresh, ttl: {30, :days}]
    {:ok, token, _claims} = encode_and_sign(user, %{}, options)
    {:ok, token}
  end
end
