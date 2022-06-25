defmodule ElixirProjectWeb.Ver1.SpellbookControllerTest do
  use ElixirProjectWeb.ConnCase

  import ElixirProjectWeb.Router.Helpers

  setup %{conn: conn} do
    user = insert(:user)
    conn = as_user(conn, user)
    {:ok, %{conn: conn, user: user}}
  end

  test "index/2 returns list spellbooks", %{conn: conn, user: user} do
    [spellbook1, spellbook2, spellbook3] = insert_list(3, :spellbook, %{user: user})

    attrs = %{page: 1, page_size: 5}

    response =
      conn
      |> get(spellbook_path(conn, :index), attrs)
      |> json_response(200)

    assert response ==
             [
               %{"id" => spellbook1.id, "name_spellbook" => spellbook1.name_spellbook},
               %{"id" => spellbook2.id, "name_spellbook" => spellbook2.name_spellbook},
               %{"id" => spellbook3.id, "name_spellbook" => spellbook3.name_spellbook}
             ]
  end

end
