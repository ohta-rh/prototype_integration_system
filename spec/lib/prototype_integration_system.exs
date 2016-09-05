defmodule PrototypeIntegrationSystemSpec do
  use ESpec
  alias PrototypeIntegrationSystem.Connection
  alias PrototypeIntegrationSystem.ProcessingJson

  describe "#execute" do
    before do
      # setup come mocks.
      allow Connection |> to( accept :execute, fn() -> "{}" end)
      allow ProcessingJson |> to( accept :to_json, fn() -> %{} end)

      PrototypeIntegrationSystem.execute
    end

    it do: Connection |> to( accepted :execute)
    it do: ProcessingJson |> to( accepted :to_json)

  end

end
