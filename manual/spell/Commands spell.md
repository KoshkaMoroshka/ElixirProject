{status, spell} = ElixirProject.Spells.Queries.GetSpell.process(1)

spellbooks = ElixirProject.Spells.Queries.ListSpell.process()

spellbooks = ElixirProject.Spells.Queries.ListSpell.process(%{description: "lol"})