defmodule Cowboy.Mixfile do
  use Mix.Project

  def project do
    [app: :cowboy,
     version: "1.0.0",

     description: description,
     package: package,
     fetch: fetch,
     deps: deps]
  end

  defp description do
    """
    Small, fast, modular HTTP server written in Erlang.
    """
  end

  defp deps do
    [{:ranch, "~> 1.0.0"},
     {:cowlib, "~> 1.0.0"}]
  end

  defp package do
    [contributors: ["Loïc Hoguin"],
     licenses: ["ISC"],
     links: %{"GitHub" => "https://github.com/ninenines/cowboy"},
     files: ["src", "include", "README.md", "AUTHORS", "LICENSE", "rebar.config", "Makefile", "erlang.mk"]]
  end

  defp fetch do
    [scm: :git,
     url: "git://github.com/ninenines/cowboy.git",
     tag: "1.0.0"]
  end
end
