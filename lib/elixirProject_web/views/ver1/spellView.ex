defmodule ElixirProjectWeb.Ver1.SpellView do
  use ElixirProjectWeb, :view

  def render("index.json", %{spells: spells}) do
    render_many(spells, __MODULE__, "show.json", as: :spell)
  end

  def render("show.json", %{spell: spell}) do
    %{
      id: spell.id,
      nameSpell: spell.nameSpell
    }
  end
end
