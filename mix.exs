defmodule Readability.Mixfile do
  @moduledoc """
  """

  @version "0.11.1"
  @description """
  Readability library for extracting and curating articles.
  """

  use Mix.Project

  def project do
    [
      app: :readability-ais,
      version: @version,
      elixir: "~> 1.3",
      description: @description,
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :floki, :httpoison]]
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
    [
      {:floki, ">= 0.30.0"},
      {:httpoison, "~> 1.8"},
      {:ex_doc, "~> 0.29", only: :dev},
      {:credo, "~> 1.6", only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev]},
      {:mock, "~> 0.2", only: :test}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*", "doc"],
      maintainers: ["Jaehyun Shin"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/keepcosmos/readability",
        "Docs" => "https://hexdocs.pm/readability/Readability.html"
      }
    ]
  end
end
