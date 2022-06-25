defmodule ElixirProjectWeb.Ver1.SpellbookController do
  use ElixirProjectWeb, :controller

  alias ElixirProject.Spellbooks
  alias ElixirProjectWeb.Ver1.SpellbooksPolicy

  action_fallback(ElixirProjectWeb.FallbackController)

  def index(conn, params) do
    user = conn.assigns.current_user
    spellbooks = Spellbooks.Queries.ListSpellbook.process()
    render(conn, "index.json", %{spellbooks: spellbooks})
  end

  def show(conn, %{"id" => id}) do
    user = conn.assigns.current_user
    ElixirProject.Spellbooks.Queries.GetSpellbook.process(id)

    with {:ok, spellbook} <- ElixirProject.Spellbooks.Queries.GetSpellbook.process(id),
         :ok <- Bodyguard.permit(SpellbooksPolicy, :show, user, spellbook) do
      render(conn, "show.json", %{spellbook: spellbook})
    end
  end
end
