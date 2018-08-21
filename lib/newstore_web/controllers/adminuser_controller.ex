defmodule NewstoreWeb.AdminuserController do
    use NewstoreWeb, :controller

    def index(conn, _params) do
      users = Prios.list_users 
      products = Prios.list_products
      render conn, "index.html", users: users, products: products
    end
end
  