defmodule SupabaseUiLiveview.Icon do
  use Phoenix.LiveComponent
  alias SupabaseUiLiveview.Icons.Azure
  alias SupabaseUiLiveview.Icons.Bitbucket
  alias SupabaseUiLiveview.Icons.Discord
  alias SupabaseUiLiveview.Icons.Facebook
  alias SupabaseUiLiveview.Icons.Github
  alias SupabaseUiLiveview.Icons.Gitlab
  alias SupabaseUiLiveview.Icons.Google
  alias SupabaseUiLiveview.Icons.Twitter
  @icons [:azure, :bitbucket, :discord, :facebook, :github, :gitlab, :google, :twitter]

  attr(:name, :atom, required: true)
  attr(:size, :integer, default: 21)

  def render(%{name: :azure} = assigns) do
    ~H"""
    <Azure.render size={@size}/>
    """
  end

  def render(%{name: :bitbucket} = assigns) do
    ~H"""
    <Bitbucket.render size={@size}/>
    """
  end

  def render(%{name: :discord} = assigns) do
    ~H"""
    <Discord.render size={@size}/>
    """
  end

  def render(%{name: :facebook} = assigns) do
    ~H"""
    <Facebook.render size={@size}/>
    """
  end

  def render(%{name: :github} = assigns) do
    ~H"""
    <Github.render size={@size}/>
    """
  end

  def render(%{name: :gitlab} = assigns) do
    ~H"""
    <Gitlab.render size={@size}/>
    """
  end

  def render(%{name: :google} = assigns) do
    ~H"""
    <Google.render size={@size}/>
    """
  end

  def render(%{name: :twitter} = assigns) do
    ~H"""
    <Twitter.render size={@size}/>
    """
  end

  def available_items, do: @icons
end
