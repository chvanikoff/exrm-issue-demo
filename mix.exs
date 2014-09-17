defmodule Myapp.Mixfile do
  use Mix.Project

  def project do
    [app: :myapp,
     version: "0.0.2",
     elixir: "~> 1.1.0-dev",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger],
     mod: {Myapp, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:exrm, "~> 0.14.9"}]
  end
end
