CharacterClasses commands:

Create:
ElixirProject.SourcesSpells.Commands.CreateSourceSpell.process(%{nameSource: "Homebrew"})

Update:
ElixirProject.SourcesSpells.Commands.UpdateSourceSpell.process(%ElixirProject.SourcesSpells.Entities.SourceSpell{id: 1}, %{nameSource: "Players Handbook"})

Delete:
ElixirProject.SourcesSpells.Commands.DeleteSourceSpell.process(%ElixirProject.SourcesSpells.Entities.SourceSpell{id: 1})

