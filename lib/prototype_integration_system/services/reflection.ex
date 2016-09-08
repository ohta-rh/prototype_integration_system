defmodule PrototypeIntegrationSystem.Services.Reflection do
  @moduledoc"""
  Reflection to Temporary DB
  """
  alias PrototypeIntegrationSystem.Models.Weather
  alias PrototypeIntegrationSystem.Repo

  @doc"""
  TODO: Insert only.
  """
  def execute(dict) do
    changeset = Weather.changeset(%Weather{}, dict)

    Repo.insert changeset
  end
end
