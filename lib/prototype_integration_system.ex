defmodule PrototypeIntegrationSystem do
  alias PrototypeIntegrationSystem.Connection
  alias PrototypeIntegrationSystem.ProcessingJson

  @moduledoc """
  Facade functions for Integration System
  """

  @doc """
  Execution main program.
  """
  def execute do
    json = Connection.execute |> ProcessingJson.to_json
  end

end
