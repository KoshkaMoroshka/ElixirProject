CharacterClasses commands:

Create:
ElixirProject.MagickSchools.Commands.CreateMagickSchool.process(%{nameSchool: "Illusion"})

Update:
ElixirProject.MagickSchools.Commands.UpdateMagickSchool.process(%ElixirProject.MagickSchools.Entities.MagickSchools{id: 1}, %{nameSchool: "Necromancy"})

Delete:
ElixirProject.MagickSchools.Commands.DeleteMagickSchool.process(%ElixirProject.MagickSchools.Entities.MagickSchools{id: 1})
