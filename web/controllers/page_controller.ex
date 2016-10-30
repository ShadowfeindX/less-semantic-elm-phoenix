defmodule LessSemanticElmPhoenix.PageController do
  use LessSemanticElmPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
