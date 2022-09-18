defmodule NovaWeb.PageController do
  use NovaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
