defmodule ElixirProjectWeb.Ver1.SpellbookControllerTest do
  use ElixirProjectWeb.ConnCase

  import ElixirProjectWeb.Router.Helpers

  setup %{conn: conn} do
    {:ok, %{conn: conn}}
  end

  test "index/2 returns list spells", %{conn: conn} do
    spell1 = insert(:spell)
    spell2 = insert(:spell)
    spell3 = insert(:spell)

    response =
      conn
      |> get(spell_path(conn, :index))
      |> json_response(200)

    assert response ==
             [
               %{"id" => spell1.id, "nameSpell" => spell1.nameSpell},
               %{"id" => spell2.id, "nameSpell" => spell2.nameSpell},
               %{"id" => spell3.id, "nameSpell" => spell3.nameSpell}
             ]
  end
end
