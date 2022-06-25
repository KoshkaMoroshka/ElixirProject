defmodule ElixirProjectWeb.V1.SpellbooksPolicy do
  @behaviour Bodyguard.Policy

  alias ElixirProject.Accounts.Entities.User
  alias ElixirProject.Spellbooks.Entities.Spellbook

  def authorize(action, %User{id: id}, %Spellbook{user_id: id})
      when action in [:show, :update],
      do: :ok

  def authorize(_action, _user, _params), do: false
end
