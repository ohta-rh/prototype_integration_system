defmodule PrototypeIntegrationSystem.ProcessingJsonSpec do
  use ESpec

  subject :to_json, do: PrototypeIntegrationSystem.ProcessingJson.to_json("{\"hoge\":1}")
  it do: expect to_json["hoge"] |> to( eq 1)

end
