defmodule NovaWeb.PageControllerTest do
  use NovaWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Expand"
  end
end
