defmodule ElixirProject.Accounts.Guardian.ErrorHandler do
  use ElixirProjectWeb, :controller

  alias ElixirProject.Changeset.Error
  alias ElixirProjectWeb.ErrorView

  def auth_error(conn, {type, _reason}, _opts) do
    error =
      type
      |> to_string()
      |> Error.auth_error()

    conn
    |> put_status(401)
    |> put_view(ErrorView)
    |> render("401.json", error: error)
  end
end
