defmodule SupabaseUiLiveview.Icons.GitlabTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Icons.Gitlab

  import Phoenix.LiveViewTest

  test "renders icon svg" do
    assert render_component(Gitlab) ==
             String.trim("""
             <svg width=\"21\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\">\n<path fill=\"currentColor\" d=\"M105.2 24.9c-3.1-8.9-15.7-8.9-18.9 0L29.8 199.7h132c-.1 0-56.6-174.8-56.6-174.8zM.9 287.7c-2.6 8 .3 16.9 7.1 22l247.9 184-226.2-294zm160.8-88l94.3 294 94.3-294zm349.4 88l-28.8-88-226.3 294 247.9-184c6.9-5.1 9.7-14 7.2-22zM425.7 24.9c-3.1-8.9-15.7-8.9-18.9 0l-56.6 174.8h132z\"></path>\n</svg>
             """)
  end

  test "renders icon svg with different size" do
    assert render_component(Gitlab, size: 32) ==
             String.trim("""
             <svg width=\"32\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\">\n<path fill=\"currentColor\" d=\"M105.2 24.9c-3.1-8.9-15.7-8.9-18.9 0L29.8 199.7h132c-.1 0-56.6-174.8-56.6-174.8zM.9 287.7c-2.6 8 .3 16.9 7.1 22l247.9 184-226.2-294zm160.8-88l94.3 294 94.3-294zm349.4 88l-28.8-88-226.3 294 247.9-184c6.9-5.1 9.7-14 7.2-22zM425.7 24.9c-3.1-8.9-15.7-8.9-18.9 0l-56.6 174.8h132z\"></path>\n</svg>
             """)
  end
end
