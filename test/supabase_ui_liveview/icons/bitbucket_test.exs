defmodule SupabaseUiLiveview.Icons.BitbucketTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Icons.Bitbucket

  import Phoenix.LiveViewTest

  test "renders icon svg" do
    assert render_component(Bitbucket) ==
             String.trim("""
             <svg width=\"21\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\">\n<path fill=\"currentColor\" d=\"M22.2 32A16 16 0 0 0 6 47.8a26.35 26.35 0 0 0 .2 2.8l67.9 412.1a21.77 21.77 0 0 0 21.3 18.2h325.7a16 16 0 0 0 16-13.4L505 50.7a16 16 0 0 0-13.2-18.3 24.58 24.58 0 0 0-2.8-.2L22.2 32zm285.9 297.8h-104l-28.1-147h157.3l-25.2 147z\"></path>\n</svg>
             """)
  end

  test "renders icon svg with different size" do
    assert render_component(Bitbucket, size: 32) ==
             String.trim("""
             <svg width=\"32\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\">\n<path fill=\"currentColor\" d=\"M22.2 32A16 16 0 0 0 6 47.8a26.35 26.35 0 0 0 .2 2.8l67.9 412.1a21.77 21.77 0 0 0 21.3 18.2h325.7a16 16 0 0 0 16-13.4L505 50.7a16 16 0 0 0-13.2-18.3 24.58 24.58 0 0 0-2.8-.2L22.2 32zm285.9 297.8h-104l-28.1-147h157.3l-25.2 147z\"></path>\n</svg>
             """)
  end
end
