defmodule ElixirProject.Spellbooks.Commands.DeleteSpellbook do
  alias ElixirProject.Repo
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def process(%Spellbook{} = spellbook) do
    Repo.delete(spellbook)
  end
end
