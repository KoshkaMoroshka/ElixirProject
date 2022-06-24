defmodule ElixirProject.Factories.Spells.SpellFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.Spells.Entities.Spell

      def spell_factory(attrs) do
        nameSpell = Map.get(attrs, :password, Lorem.sentence(8..16))
        level = Map.get(attrs, :level, Enum.random(1..10))
        castingTime = Map.get(attrs, :castingTime, Lorem.sentence(8..16))
        duration = Map.get(attrs, :duration, Lorem.sentence(8..16))
        magickSchoolName = Map.get(attrs, :duration, Lorem.sentence(8..16))
        {_, magickSchool} = ElixirProject.MagickSchools.Commands.CreateMagickSchool.process(%{nameSchool: magickSchoolName})
        sourceSpellName = Map.get(attrs, :duration, Lorem.sentence(8..16))
        {_, sourceSpell} = ElixirProject.SourcesSpells.Commands.CreateSourceSpell.process(%{nameSource: sourceSpellName})
        description = Map.get(attrs, :duration, Lorem.sentence(8..32))
        character_classesName = Map.get(attrs, :duration, Lorem.sentence(8..16))
        {_, character_classes} = ElixirProject.CharacterClasses.Commands.CreateCharacterClasses.process(%{nameClass: character_classesName})

        %Spell{
          nameSpell: nameSpell,
          level: level,
          castingTime: castingTime,
          duration: duration,
          magickSchool: magickSchool,
          sourceSpell: sourceSpell,
          description: description,
          character_classes: [character_classes]
        }
      end
    end
  end
end
