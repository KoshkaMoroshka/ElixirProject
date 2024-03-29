defmodule ElixirProject.Spells.Queries.ListSpell do
  alias ElixirProject.Repo
  alias ElixirProject.Spells.Entities.Spell

  import Ecto.Query, only: [from: 2]

  def process(params) do
    Spell
    |> with_characterClasses()
    |> with_magickSchools()
    |> with_sourcesSpells()
    |> with_nameSpell(params)
    |> with_level(params)
    |> with_castingTime(params)
    |> with_duration(params)
    |> with_magickSchool(params)
    |> with_sourceSpell(params)
    |> with_CharacterClasses(params)
    |> with_description(params)
    |> select_fields()
    |> Repo.paginate(params)
  end

#-------------------------------------------------------------------------------
  defp with_nameSpell(query, %{nameSpell: nil}), do: query

  defp with_nameSpell(query, _), do: query

  defp with_nameSpell(query, %{nameSpell: nameSpell}) when is_binary(nameSpell) do
    nameSpell = "%" <> String.trim(nameSpell) <> "%"

    from i in query,
      where: i.nameSpell == ^nameSpell
  end

#-------------------------------------------------------------------------------
  defp with_level(query, %{level: nil}), do: query

  defp with_level(query, _), do: query

  defp with_level(query, %{level: level}) do
    from i in query,
      where: i.level == ^level
  end

#-------------------------------------------------------------------------------
  defp with_castingTime(query, %{castingTime: nil}), do: query

  defp with_castingTime(query, _), do: query

  defp with_castingTime(query, %{castingTime: castingTime}) when is_binary(castingTime) do
    castingTime = "%" <> String.trim(castingTime) <> "%"

    from i in query,
      where: i.castingTime == ^castingTime
  end

#-------------------------------------------------------------------------------
  defp with_duration(query, %{duration: nil}), do: query

  defp with_duration(query, _), do: query

  defp with_duration(query, %{duration: duration}) when is_binary(duration) do
    duration = "%" <> String.trim(duration) <> "%"

    from i in query,
      where: i.duration == ^duration
  end

#-------------------------------------------------------------------------------
  defp with_magickSchool(query, %{nameSchool: nameSchool}) do
    nameSchool = "%" <> String.trim(nameSchool) <> "%"

    from i in query,
      join: magickSchools in assoc(i, :magickSchools),
      where: ilike(magickSchools.nameSchool, ^nameSchool)
  end

  defp with_magickSchool(query, _), do: query

  defp with_magickSchool(query, %{nameSchool: nil}), do: query

  #-------------------------------------------------------------------------------
  defp with_sourceSpell(query, %{nameSource: nameSource}) do
    nameSource = "%" <> String.trim(nameSource) <> "%"

    from i in query,
      join: sourcesSpells in assoc(i, :sourcesSpells),
      where: ilike(sourcesSpells.nameSource, ^nameSource)
  end

  defp with_sourceSpell(query, _), do: query

  defp with_sourceSpell(query, %{nameSource: nil}), do: query

  #-------------------------------------------------------------------------------
  defp with_description(query, %{description: description}) do
    description = "%" <> String.trim(description) <> "%"

    from i in query,
      where: ilike(i.description, ^description)
  end

  defp with_description(query, _), do: query

  defp with_description(query, %{description: nil}), do: query

  #-------------------------------------------------------------------------------

  defp with_CharacterClasses(query, %{nameClass: nameClass}) do
    nameClass = "%" <> String.trim(nameClass) <> "%"

    from i in query,
      join: character_classes in assoc(i, :character_classes),
      where: ilike(character_classes.nameClass, ^nameClass)
  end

  defp with_CharacterClasses(query, _), do: query

  defp with_CharacterClasses(query, %{nameClass: nil}), do: query

  #-------------------------------------------------------------------------------

  defp with_characterClasses(query) do
    from i in query,
    join: cc in assoc(i, :character_classes)
  end

  defp with_magickSchools(query) do
    from i in query,
    join: ms in assoc(i, :magickSchool)
  end

  defp with_sourcesSpells(query) do
    from i in query,
    join: ss in assoc(i, :sourceSpell)
  end

  defp select_fields(query) do
    from [i, cc, ms, ss] in query,
    select: %{
    id: i.id,
    nameSpell: i.nameSpell,
    level: i.level,
    castingTime: i.castingTime,
    duration: i.duration,
    magickSchool: ms.nameSchool,
    sourceSpell: ss.nameSource,
    description: i.description
    }
  end

end
