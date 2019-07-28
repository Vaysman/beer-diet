defmodule BeetDietWeb.PageController do
  use BeetDietWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
