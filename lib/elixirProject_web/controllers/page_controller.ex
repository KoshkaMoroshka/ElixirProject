defmodule ElixirProjectWeb.PageController do
  use ElixirProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
