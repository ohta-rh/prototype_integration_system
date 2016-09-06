defmodule PrototypeIntegrationSystem.Services.ReflectionSpec do
  use ESpec
  alias PrototypeIntegrationSystem.Services.Reflection
  alias PrototypeIntegrationSystem.Repo
  alias PrototypeIntegrationSystem.Models.Weather

  let! :dict, do: %{cod: "401", message: "hogehoge"}
  subject :execute, do: Reflection.execute(dict)

  describe ".execute" do
    before do
      allow Repo |> to( accept :insert, fn() -> %{} end )
      allow Weather |> to( accept :changeset, fn() -> %{} end )
      execute
    end

    it do: expect Repo |> to( accepted :insert )
    it do: expect Weather |> to( accepted :changeset )
  end
end
