defmodule ElixirProjectWeb.Ver1.SpellbookControllerTest do
  use ElixirProjectWeb.ConnCase

  import ElixirProjectWeb.Router.Helpers

  setup %{conn: conn} do
    user = insert(:user)
    conn = assign(conn, :current_user, user)
    {:ok, %{conn: conn}}
  end

  test "index/2 returns list spellbooks", %{conn: conn} do
    [spellbook1, spellbook2, spellbook3] =
      insert_list(3, :spellbook, %{user: conn.assigns.current_user})

    response =
      conn
      |> get(spellbook_path(conn, :index))
      |> json_response(200)

    assert response ==
             [
               %{"id" => spellbook1.id, "name_spellbook" => spellbook1.name_spellbook},
               %{"id" => spellbook2.id, "name_spellbook" => spellbook2.name_spellbook},
               %{"id" => spellbook3.id, "name_spellbook" => spellbook3.name_spellbook}
             ]
  end

end
