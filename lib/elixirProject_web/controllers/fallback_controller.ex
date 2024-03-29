defmodule ElixirProjectWeb.FallbackController do
  use ElixirProjectWeb, :controller

  alias CharlistWeb.ErrorView

  def call(%Conn{} = conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(ErrorView)
    |> render("404.json", %{})
  end

  def call(%Conn{} = conn, {:error, :unauthorized}) do
    conn
    |> put_status(:forbidden)
    |> put_view(ErrorView)
    |> render("403.json", message: "You are not authorized to perform this action.")
  end
end
