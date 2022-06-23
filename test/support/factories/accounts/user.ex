defmodule ElixirProject.Factories.Accounts.UserFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias ElixirProject.Accounts.Entities.User

      def user_factory(attrs) do
        password = Map.get(attrs, :password, Lorem.sentence(8..16))
        login = Map.get(attrs, :login, Lorem.sentence(6..12))
        email = Map.get(attrs, :email, Internet.email())

        %User{
          password: password,
          login: login,
          email: sequence(:email, &"#{&1}_#{email}")
        }
      end
    end
  end
end
