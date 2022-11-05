defmodule SupabaseUiLiveview.InputTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Input

  import Phoenix.LiveViewTest

  test "renders input default to text" do
    assert render_component(Input, name: "name") =~ "<input type=\"text\""
  end

  test "renders input with password" do
    assert render_component(Input, name: "name", type: "password") =~ "<input type=\"password\""
  end

  test "renders input with email" do
    assert render_component(Input, name: "name", type: "email") =~ "<input type=\"email\""
  end
end
