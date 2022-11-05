defmodule SupabaseUiLiveview.LinkButtonTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.LinkButton

  import Phoenix.Component
  import Phoenix.LiveViewTest

  test "renders inner component" do
    assigns = %{}

    assert render_component(LinkButton,
             inner_content: ~H"""
             testing
             """
           ) =~ "<button"
  end
end
