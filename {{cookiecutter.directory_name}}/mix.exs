defmodule {{ cookiecutter.module_name }}.Mixfile do
  use Mix.Project

  def project do
    [app: :{{ cookiecutter.otp_app_name }},
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      # sensible default dependencies that are useful for almost all projects
      {:dialyxir, "~> 0.3", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:inch_ex, "~> 0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.5", only: :test}

      # common application dependencies
      # {:csv, "~> 1.4"},
      # {:ecto, "~> 2.0"},
      # {:httpoison, "~> 0.9"},
      # {:plug, "~> 1.2"},
      # {:poison, "~> 2.2"},
      # {:postgrex, "~> 0.12"},
      # {:timex, "~> 3.0"},
    ]
  end
end
