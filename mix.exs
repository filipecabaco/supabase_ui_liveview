defmodule SupabaseUiLiveview.MixProject do
  use Mix.Project

  def project do
    [
      app: :supabase_ui_liveview,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.3"},
      {:phx_live_storybook, "~> 0.4.5", env: :dev},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
