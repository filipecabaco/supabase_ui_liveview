defmodule SupabaseUiLiveview.Button do
  use Phoenix.LiveComponent
  alias SupabaseUiLiveview.Icon
  attr(:type, :atom, default: nil)
  attr(:block, :boolean, default: false)
  attr(:primary, :boolean, default: false)
  attr(:size, :atom, default: :primary)
  attr(:loading, :boolean, default: false)
  attr(:icon, :atom, default: nil)
  attr(:style, :string, default: "")
  slot(:inner_content, required: true)

  def render(assigns) do
    assigns = assign(assigns, :icon, assigns.icon)

    ~H"""
    <button class={@size} style={@style} disabled={@loading}>
    <span class="flex" :if={@icon}>
      <Icon.render name={@icon} />
    </span>
    <%= @inner_content %>
    </button>
    """
  end
end
