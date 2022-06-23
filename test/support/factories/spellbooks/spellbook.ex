defmodule ElixirProject.Factories.Spellbooks.SpelbookFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.Spellbooks.Entities.Spellbook
      alias ElixirProject.Accounts.Entities.User

      def spellbook_factory(attrs) do
        name_spellbook = Map.get(attrs, :name_spellbook, Lorem.sentence(8..16))
        user = Map.get(attrs, :user, insert(:user))

        %Spellbook{
          name_spellbook: name_spellbook,
          user: user,
        }
      end
    end
  end
end
