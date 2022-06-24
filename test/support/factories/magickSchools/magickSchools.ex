defmodule ElixirProject.Factories.MagickSchools.MagickSchoolsFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.MagickSchools.Entities.MagickSchools

      def magickSchool_factory(attrs) do
        nameSchool = Map.get(attrs, :nameSchool, Lorem.sentence(8..16))

        %MagickSchools{
          nameSchool: nameSchool,
        }
      end
    end
  end
end
