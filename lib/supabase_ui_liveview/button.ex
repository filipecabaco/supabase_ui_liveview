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
    size =
      case assigns.size do
        :primary -> primary()
        :large -> large()
        :medium -> medium()
        _ -> block()
      end

    size_class = base_classes(size)
    assigns = assign(assigns, :icon, assigns.icon)
    assigns = assign(assigns, :size, size_class)

    ~H"""
    <button class={@size} style={style(@style)} disabled={@loading}>
    <span class="flex" :if={@icon}>
      <Icon.render name={@icon} />
    </span>
    <%= @inner_content %>
    </button>
    """
  end

  defp style(added) do
    style = """
    text-shadow: 0px 0px 4px rgb(38 111 78 / 50%);
    transition-property: background-color, border-color, color, fill, stroke, opacity, box-shadow, transform;
    transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
    transition-duration: 150ms;
    font-family: inherit;
    font-weight: inherit;
    #{added}
    """

    String.replace(style, "\n", "")
  end

  defp base_classes(added) do
    "text-[#444] text-center bg-none border-[E0E0E0] border-[1px] border-solid cursor-pointer inline-flex gap-[0.5rem] items-center relative text-center rounded #{added}"
  end

  def primary do
    "bg-[#D9654E] border-transparent text-[#FFF]"
  end

  def large do
    "text-base py-[1rem] px-[0.5rem]"
  end

  def medium do
    "text-[0.875rem] leading-[1.25rem] py-[1rem] px-[0.5rem]"
  end

  def block do
    "flex align-center justify-center w-full"
  end
end
