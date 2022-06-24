defmodule ElixirProjectWeb.Ver1.SpellController do
  use ElixirProjectWeb, :controller

  alias ElixirProject.Spells

  action_fallback(ElixirProjectWeb.FallbackController)

  def index(conn, _params) do
    spells = Spells.Queries.ListSpell.process(%{})
    render(conn, "index.json", %{spells: spells})
  end

  def show(conn, %{"id" => id}) do
    with {:ok, spell} <- Spells.Queries.GetSpell.process(id) do
      render(conn, "show.json", %{spell: spell})
    end
  end
end
