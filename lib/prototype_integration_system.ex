defmodule PrototypeIntegrationSystem do
  use Application
  alias PrototypeIntegrationSystem.Services.Facade

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(PrototypeIntegrationSystem.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: PrototypeIntegrationSystem.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @func"""
    Main logic
  """
  def main(args) do
    Facade.execute
  end

end
