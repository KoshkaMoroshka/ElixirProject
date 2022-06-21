User commands:

Create:
ElixirProject.Spellbooks.Commands.CreateSpellbook.process(%{nameSpellbook: "JoinTheArmySon", user_id: <Пользователь/User>.id})

Update:
ElixirProject.Spellbooks.Commands.UpdateSpellbook.process(%ElixirProject.Spellbooks.Entities.Spellbook{id: 1}, %{nameSpellbook: "NoJoin", user_id: 1)

Delete:
ElixirProject.Spellbooks.Commands.DeleteSpellbook.process(%ElixirProject.Spellbooks.Entities.Spellbook{id: 1})
