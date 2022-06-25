defmodule ElixirProject.Accounts.Guardian.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :oz_api,
    error_handler: ElixirProject.Accounts.Guardian.ErrorHandler,
    module: ElixirProject.Accounts.Services.Guardian

  plug Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"}
  # Load the user if either of the verifications worked
  plug Guardian.Plug.LoadResource, allow_blank: true
end
