defmodule PrototypeIntegrationSystem.Services.Facade do
  alias PrototypeIntegrationSystem.Connection
  alias PrototypeIntegrationSystem.ProcessingJson
  alias PrototypeIntegrationSystem.Services.Reflection

  def execute do

    Connection.execute 
      |> ProcessingJson.to_json 
      |> Reflection.execute 
  end

end
