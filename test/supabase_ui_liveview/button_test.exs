defmodule SupabaseUiLiveview.ButtonTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Button

  import Phoenix.Component
  import Phoenix.LiveViewTest

  test "renders inner component" do
    assigns = %{}

    assert render_component(Button,
             inner_content: ~H"""
             testing
             """
           ) =~ "button"
  end
end
