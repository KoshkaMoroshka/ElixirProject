Spell commands:

Create:
ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, description: "hahahahahahah"}) - с одним 

ElixirProject.Spells.Commands.CreateSpell.process(%{nameSpell: "Wjuh", level: 2, castingTime: "Mnoga", duration: "lolka", magickSchool_id: b.id, sourceSpell_id: d.id, characterClasses: chrClass, characterClasses: chrClass2, description: "hahahahahahah"})

Update:
ElixirProject.Spellbooks.Commands.UpdateSpellbook.process(%ElixirProject.Spellbooks.Entities.Spellbook{id: 1}, %{nameSpellbook: "NoJoin", user_id: 1)

Delete:
ElixirProject.Spells.Commands.DeleteSpell.process(%ElixirProject.Spells.Entities.Spell{id: 1})
