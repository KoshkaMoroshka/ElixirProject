defmodule ElixirProjectWeb.ConnCase do
  @moduledoc """
  This module defines the test case to be used by
  tests that require setting up a connection.

  Such tests rely on `Phoenix.ConnTest` and also
  import other functionality to make it easier
  to build common data structures and query the data layer.

  Finally, if the test case interacts with the database,
  we enable the SQL sandbox, so changes done to the database
  are reverted at the end of every test. If you are using
  PostgreSQL, you can even run database tests asynchronously
  by setting `use ElixirProjectWeb.ConnCase, async: true`, although
  this option is not recommended for other databases.
  """

  use ExUnit.CaseTemplate

  alias ElixirProject.Repo
  alias Ecto.Adapters.SQL.Sandbox

  using do
    quote do
      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      import ElixirProjectWeb.ConnCase
      import ElixirProject.DataCase
      import ElixirProject.Factories

      alias ElixirProjectWeb.Router.Helpers, as: Routes

      alias ElixirProject.Accounts.{
        Entities.User,
        Services.Guardian
      }

      # The default endpoint for testing
      @endpoint ElixirProjectWeb.Endpoint

      def as_user(conn, %User{} = user) do
        {:ok, token, _} = Guardian.encode_and_sign(user, %{}, token_type: :access)

        Plug.Conn.put_req_header(conn, "authorization", "bearer: " <> token)
      end
    end
  end

  setup tags do
    pid = Sandbox.start_owner!(Repo, shared: not tags[:async])
    on_exit(fn -> Sandbox.stop_owner(pid) end)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
