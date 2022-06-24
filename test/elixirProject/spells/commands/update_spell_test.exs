defmodule ElixirProject.Spells.Commands.UpdateSpellTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spells

  @tag :updatespell
  test "process/1 update_spell test" do
    spell = insert(:spell)
    name = "Fireball"
    assert {:ok, updated_spell} = Spells.Commands.UpdateSpell.process(spell, %{nameSpell: name, character_classes: [spell.character_classes]})
    assert updated_spell.nameSpell != spell.nameSpell
  end
end
