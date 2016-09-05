defmodule PrototypeIntegrationSystemSpec.Connection do
  use ESpec
  

  describe ".execute" do
    subject do: PrototypeIntegrationSystem.Connection.execute()

    before do
      allow HTTPoison |> to(accept :start, fn() -> true end )
      allow HTTPoison |> to(accept :get!, fn(endpoint) -> "" end )
    end

    it do: accepted(:start)
    it do: accepted(:get!, PrototypeIntegrationSystem.Connection.endpoint)
  end    
end
