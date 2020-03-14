defmodule MyAppWeb.PageView do
  use MyAppWeb, :view

  def div_tag(do: content) do
    ~E"""
    <div><%= content %></div>
    """
  end
end
