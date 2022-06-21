defmodule ElixirProject.Spells.Commands.CreateSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  def process(attrs) do
    %Spell{}
    |> Spell.create_changeset(attrs)
    |> Repo.insert()
  end
end
