defmodule PrototypeIntegrationSystem.Mixfile do
  use Mix.Project

  def project do
    [app: :prototype_integration_system,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ecto, :mariaex],
     mod: {PrototypeIntegrationSystem, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:espec, "~> 1.0.1", only: :test},
     {:httpoison, "~> 0.9.0"},
     {:poison, "~> 2.0"},
     {:ecto, "~> 1.0"},
     {:mariaex, "~> 0.1"}
    ]
  end

  def escript do
    [main_module: PrototypeIntegrationSystem]
  end
end
