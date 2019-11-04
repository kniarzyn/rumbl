defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.Accounts

  def index(conn, _) do
    users = Accounts.list_users()
    conn |> render("index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
	user = Accounts.get_user(id)
    conn |> render("show.html", user: user)
  end
end
