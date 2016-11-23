defmodule Cedro.PageController do
  use Cedro.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
