defmodule ElixirProject.Factories do
  use ExMachina.Ecto, repo: ElixirProject.Repo

  use ElixirProject.Factories.{
    Accounts.UserFactory,
    Spellbooks.SpelbookFactory,
    CharacterClasses.CharacterClassesFactory,
    MagickSchools.MagickSchoolsFactory,
    SourcesSpells.SourceSpellFactory,
    Spells.SpellFactory
  }
end
