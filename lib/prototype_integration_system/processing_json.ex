defmodule PrototypeIntegrationSystem.ProcessingJson do

  @moduledoc """
  This module is Supported String to JSON.
    now, is  strong dependency from a Posion module.
    if Poison hex is not standard in Elixir community, will be replace Using Poision codes.
    becouce, I created wrapperclass, this is it.
  """

  @doc """
  Parse JSON String with Poison,
    e,g)

    Connection.execute |> ProcessingJson.to_json
    TODO: Error handling
  """

  def to_json(string) do
    Poison.decode! string
  end

end
