defmodule ElixirProjectWeb.Ver1.SpellbookView do
  use ElixirProjectWeb, :view

  def render("index.json", %{spellbooks: spellbooks}) do
    render_many(spellbooks, __MODULE__, "show.json", as: :spellbook)
  end

  def render("show.json", %{spellbook: spellbook}) do
    %{
      id: spellbook.id,
      name_spellbook: spellbook.name_spellbook
    }
  end
end
