defmodule MyAppWeb.HomeLiveTest do
  use MyAppWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, home_live, disconneted_html} = live(conn, "/")
    assert disconneted_html =~ "Welcome to Phoenix!"
    assert render(home_live) =~ "Welcome to Phoenix!"
  end
end
