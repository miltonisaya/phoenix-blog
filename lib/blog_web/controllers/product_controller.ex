defmodule BlogWeb.ProductController do
  use BlogWeb, :controller

  def index(conn, _params) do
    dbg(conn)
    render(conn, :index)
  end

  def show(conn,%{"id" => id}) do
    render(conn,:show,id: id)
  end

end
