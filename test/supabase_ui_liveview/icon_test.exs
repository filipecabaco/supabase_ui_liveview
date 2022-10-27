defmodule SupabaseUiLiveview.IconTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Icon

  import Phoenix.LiveViewTest

  for icon <- Icon.available_items() do
    test "renders #{icon}" do
      assert render_component(Icon, name: unquote(icon)) =~ "svg"
    end
  end
end
