defmodule ElixirProjectWeb.Ver1.SpellbookController do
  use ElixirProjectWeb, :controller

  alias ElixirProject.Spellbooks
  alias ElixirProjectWeb.Ver1.SpellbooksPolicy

  action_fallback(ElixirProjectWeb.FallbackController)

  defmodule IndexSearchParams do
    use Params.Schema, %{
      name_spellbook: :string
    }
  end

  def index(conn, %{"current_user" => current_user} = params) do
    with {:ok, params} <- ApplyParams.do_apply(IndexSearchParams, params) do
      spellbooks = Spellbooks.Queries.ListSpellbook.process()
      render(conn, "index.json", %{spellbooks: spellbooks})
    end
  end

  def show(conn, %{"current_user" => current_user, "id" => id}) do
    with {:ok, spellbook} <- ElixirProject.Spellbooks.Queries.GetSpellbook.process(id),
         :ok <- Bodyguard.permit(CharlistPolicy, :show, current_user, spellbook) do
      render(conn, "show.json", %{spellbook: spellbook})
    end
  end
end
