defmodule SupabaseUiLiveview.Input do
  use Phoenix.LiveComponent
  alias SupabaseUiLiveview.Icon

  attr(:name, :string)
  attr(:label, :string)
  attr(:placeholder, :string, default: "")
  attr(:value, :any)
  attr(:icon, :atom, default: nil)
  attr(:type, :string, default: "text", values: ~w(text password email))

  def render(assigns) do
    ~H"""
    <label for={@name}>
      <div class="input">
        <%= if @icon do%>
          <span class="icon">
          <Icon.render name={@icon} size={21}/>
          </span>
        <%end%>
        <input type={@type} name={@name} placeholder={@placeholder} autocomplete="on">
      </div>
    </label>
    """
  end
end
