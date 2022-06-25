defmodule ElixirProjectWeb.Ver1.UserView do
  use ElixirProjectWeb, :view

  def render("create.json", %{
        user: user,
        access_token: access_token,
        refresh_token: refresh_token
      }) do
    %{
      access_token: access_token,
      refresh_token: refresh_token,
      user: %{
        email: user.email,
        login: user.login
      }
    }
  end
end
