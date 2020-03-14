defmodule MyAppWeb.PageLive do
  use MyAppWeb, :live_view

  def render(%{template: template} = assigns) do
    MyAppWeb.PageView.render(template, assigns)
    |> IO.inspect()
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, template: "index1.html")}
  end

  def handle_event("toggle", _, %{assigns: %{template: "index1.html"}} = socket) do
    {:noreply, assign(socket, template: "index2.html")}
  end

  def handle_event("toggle", _, %{assigns: %{template: "index2.html"}} = socket) do
    {:noreply, assign(socket, template: "index1.html")}
  end
end
