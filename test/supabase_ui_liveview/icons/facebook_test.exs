defmodule SupabaseUiLiveview.Icons.FacebookTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Icons.Facebook

  import Phoenix.LiveViewTest

  test "renders icon svg" do
    assert render_component(Facebook) ==
             String.trim("""
             <svg width=\"21\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\">\n<path fill=\"currentColor\" d=\"M400 32H48A48 48 0 0 0 0 80v352a48 48 0 0 0 48 48h137.25V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.27c-30.81 0-40.42 19.12-40.42 38.73V256h68.78l-11 71.69h-57.78V480H400a48 48 0 0 0 48-48V80a48 48 0 0 0-48-48z\"></path>\n</svg>
             """)
  end

  test "renders icon svg with different size" do
    assert render_component(Facebook, size: 32) ==
             String.trim("""
             <svg width=\"32\" aria-hidden=\"true\" focusable=\"false\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\">\n<path fill=\"currentColor\" d=\"M400 32H48A48 48 0 0 0 0 80v352a48 48 0 0 0 48 48h137.25V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.27c-30.81 0-40.42 19.12-40.42 38.73V256h68.78l-11 71.69h-57.78V480H400a48 48 0 0 0 48-48V80a48 48 0 0 0-48-48z\"></path>\n</svg>
             """)
  end
end
