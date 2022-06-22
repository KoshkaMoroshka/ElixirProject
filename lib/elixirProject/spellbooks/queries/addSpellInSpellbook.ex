defmodule ElixirProject.Spellbooks.Queries.AddSpell do
  alias ElixirProject.Repo
  alias SpellsSpellbooks

  def process(attrs) do
    %SpellsSpellbooks{}
    |> SpellsSpellbooks.changeset(attrs)
    |> Repo.insert()
  end
end
