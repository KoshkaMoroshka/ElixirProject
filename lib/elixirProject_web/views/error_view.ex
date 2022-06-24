defmodule ElixirProjectWeb.ErrorView do
  use ElixirProjectWeb, :view

  def render("404.json", %{}) do
    %{errors: ["Not found"]}
  end
end
