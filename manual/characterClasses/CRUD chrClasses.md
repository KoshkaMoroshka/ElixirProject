CharacterClasses commands:

Create:
ElixirProject.CharacterClasses.Commands.CreateCharacterClasses.process(%{nameClass: "warrior"})

Update:
ElixirProject.CharacterClasses.Commands.UpdateCharacterClass.process(%ElixirProject.CharacterClasses.Entities.CharacterClasses{id: 2}, %{nameClass: "mage"})

Delete:
ElixirProject.CharacterClasses.Commands.DeleteCharacterClass.process(%ElixirProject.CharacterClasses.Entities.CharacterClasses{id: 1})
