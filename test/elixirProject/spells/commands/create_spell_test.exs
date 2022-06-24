defmodule ElixirProject.Spellbooks.Commands.CreateSpellTest do
  use ElixirProject.DataCase

  alias ElixirProject.Spells

  @tag :createspell
  test "process/1 create spell" do
    magickSchool = insert(:magickSchool)
    sourceSpell = insert(:sourceSpell)
    character_classes = insert(:character_classes)
    assert {:ok, create_spell} = Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: magickSchool.id, sourceSpell_id: sourceSpell.id, description: "hahahahahahah", character_classes: [character_classes]})
    {status, get_spell} = Spells.Queries.GetSpell.process(create_spell.id)
    assert get_spell.id == create_spell.id
  end
end
