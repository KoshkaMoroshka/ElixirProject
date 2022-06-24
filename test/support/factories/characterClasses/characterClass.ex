defmodule ElixirProject.Factories.CharacterClasses.CharacterClassesFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.CharacterClasses.Entities.CharacterClasses

      def character_classes_factory(attrs) do
        nameClass = Map.get(attrs, :nameClass, Lorem.sentence(8..16))

        %CharacterClasses{
          nameClass: nameClass,
        }
      end
    end
  end
end
