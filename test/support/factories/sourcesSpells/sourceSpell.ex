defmodule ElixirProject.Factories.SourcesSpells.SourceSpellFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.SourcesSpells.Entities.SourceSpell

      def sourceSpell_factory(attrs) do
        nameSource = Map.get(attrs, :nameSource, Lorem.sentence(8..16))

        %SourceSpell{
          nameSource: nameSource,
        }
      end
    end
  end
end
