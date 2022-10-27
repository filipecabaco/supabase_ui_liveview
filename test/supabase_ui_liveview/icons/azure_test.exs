defmodule SupabaseUiLiveview.Icons.AzureTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Icons.Azure

  import Phoenix.LiveViewTest

  test "renders icon svg" do
    assert render_component(Azure) ==
             String.trim("""
             <svg width=\"21\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 161.67 129\">\n<path d=\"M88.33 0L40.67 41.33 0 114.33h36.67zm6.34 9.67L74.33 67l39 49-75.66 13h124z\" fill=\"currentColor\"></path>\n</svg>
             """)
  end

  test "renders icon svg with different size" do
    assert render_component(Azure, size: 32) ==
             String.trim("""
             <svg width=\"32\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 161.67 129\">\n<path d=\"M88.33 0L40.67 41.33 0 114.33h36.67zm6.34 9.67L74.33 67l39 49-75.66 13h124z\" fill=\"currentColor\"></path>\n</svg>
             """)
  end
end
