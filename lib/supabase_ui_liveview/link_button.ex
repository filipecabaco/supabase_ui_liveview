defmodule SupabaseUiLiveview.LinkButton do
  use Phoenix.LiveComponent

  slot(:inner_content, required: true)

  def render(assigns) do
    ~H"""
    <button on_click="(e) => {e.preventDefault()}">
    <%= @inner_content %>
    </button>
    """
  end
end
