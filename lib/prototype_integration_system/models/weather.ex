defmodule PrototypeIntegrationSystem.Models.Weather do
  use Ecto.Model

  @moduledoc"""
    Sample response json is below.
    {"cod":401, "message": "Invalid API key. Please see http://openweathermap.org/faq#error401 for more info."}
    Oops! its error response... but this is prototype..!
  """

  schema "weather" do
    field :cod, :integer
    field :message, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:cod, :message])
  end
end
