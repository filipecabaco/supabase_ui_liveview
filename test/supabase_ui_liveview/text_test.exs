defmodule SupabaseUiLiveview.TextTest do
  use ExUnit.Case
  alias SupabaseUiLiveview.Text

  import Phoenix.Component
  import Phoenix.LiveViewTest

  test "renders inner component" do
    assigns = %{}

    assert render_component(Text,
             inner_content: ~H"""
             <div>test</div>
             """
           ) ==
             String.trim("""
             <span class="">
               <div>test</div>
             </span>
             """)
  end

  test "renders with danger status" do
    assigns = %{}

    assert render_component(Text,
             type: :danger,
             inner_content: ~H"""
             <div>test</div>
             """
           ) ==
             String.trim("""
             <span class="text-[#FFF565]">
               <div>test</div>
             </span>
             """)
  end
end
