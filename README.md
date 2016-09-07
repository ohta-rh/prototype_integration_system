# PrototypeIntegrationSystem

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `prototype_integration_system` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:prototype_integration_system, "~> 0.1.0"}]
    end
    ```

  2. Ensure `prototype_integration_system` is started before your application:

    ```elixir
    def application do
      [applications: [:prototype_integration_system]]
    end
    ```

## Examples

  1. Runner

    ```shell
    mix run -e "Foo.bar()"

    ```

  2. GET JSON

    ```elixir
    HTTPoison.start
    response = HTTPoison.get! [endpoint]
    response.body

    # Consider Error Handling

    try do
      HTTPoison.start
      response = HTTPoison.get! [endpoint]
      response.body
    rescue
      e in RuntimeError -> e
    end
    ```

  3. Invoke background shell
   
    ```elixir
    try do
      System.cmd "path/to/sh", ["/path/to/script"], []
    rescue
      #do something
    end
