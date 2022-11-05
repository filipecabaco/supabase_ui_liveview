defmodule SupabaseUiLiveview.Text do
  use Phoenix.LiveComponent
  attr(:type, :atom, default: nil)
  slot(:inner_content, required: true)

  def render(assigns) do
    ~H"""
    <span class={if @type == :danger, do: "danger", else: ""}>
      <%= @inner_content %>
    </span>
    """
  end
end
