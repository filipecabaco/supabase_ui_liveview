defmodule SupabaseUiLiveview.Icons.Azure do
  use Phoenix.LiveComponent
  attr(:size, :integer, default: 21)

  def render(assigns) do
    ~H"""
    <svg
    width={@size}
    aria-hidden="true"
    focusable="false"
    role="img"
    xmlns="http://www.w3.org/2000/svg"
    viewBox="0 0 161.67 129">
    <path d="M88.33 0L40.67 41.33 0 114.33h36.67zm6.34 9.67L74.33 67l39 49-75.66 13h124z" fill="currentColor"/>
    </svg>
    """
  end
end
