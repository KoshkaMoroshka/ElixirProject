Spell commands:

Create:
spell = ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, description: "hahahahahahah", characterClasses: [chrClass, chrClass2]})

ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, characterClasses: chrClass, characterClasses: chrClass2, description: "hahahahahahah"})

Update:
ElixirProject.Spells.Commands.UpdateSpell.process(%ElixirProject.Spellbooks.Entities.Spellbook{id: 1}, %{nameSpell: "NoJoin")

Delete:
ElixirProject.Spells.Commands.DeleteSpell.process(%ElixirProject.Spells.Entities.Spell{id: 1})
