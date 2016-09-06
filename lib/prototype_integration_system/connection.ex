defmodule PrototypeIntegrationSystem.Connection do
  @endpoint "http://api.openweathermap.org/data/2.5/weather?q=Tokyo,jp" #Dummy

  @moduledoc """
  Connect to Dummy APIServer functions
  """

  @doc """
  Send GET Request to API Server, and Return response
  TODO: Error handling
  """
  def execute do
    HTTPoison.start
    response = HTTPoison.get! @endpoint

    response.body
  end

  @doc """
  Optimize for endpoint if Called method by Other Module
  """
  def endpoint do
    @endpoint
  end
end

