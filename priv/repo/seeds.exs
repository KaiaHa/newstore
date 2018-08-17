# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Webdevexam2018.Repo.insert!(%Webdevexam2018.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Users and login
user = %{fullname: "Jane Doe", fname: "Jane", lname: "Doe", phone: "123456789", postal_code: "7715", address: "Kongensgate 35", country: "Norway", city: "Steinkjer"}
login = %{email: "test1@mail.com", password_hash: "notimplemented", isadmin: true}
Prios.Identity.create_user(user, login)

user = %{fullname: "Petter Testmann", fname: "Jack", lname: "Testmann", phone: "111222333", postal_code: "7799", address: "Oslo Veg 32", country: "Norway", city: "Oslo"}
login = %{email: "test2@mail.com", password_hash: "notimplemented", isadmin: true}
Prios.Identity.create_user(user, login)
user = %{fullname: "Bob Smith", fname: "Bob", lname: "Smith", phone: "999999999", postal_code: "55692", address: "Mississippi Street 2", country: "America", city: "Mississippi"}
login = %{email: "test3@mail.com", password_hash: "notimplemented", isadmin: true}
Prios.Identity.create_user(user, login)

#Suppliers and products
supplier = %{company_name: "First Company", org_number: "NO123427", contact_person: "Tom Roger"}
Prios.Products.create_supplier(supplier)
product = %{name: "Red cup", price: 199, details: "Sturdy and handcrafted", tags: "red", inventory: 15}
Prios.Products.create_product(product, 1)
product = %{name: "Blue cup", price: 199, details: "Comfortable mug with heat control", tags: "blue", inventory: 5}
Prios.Products.create_product(product, 1)
#
supplier = %{company_name: "Second Company", org_number: "NO231427", contact_person: "Roger"}
Prios.Products.create_supplier(supplier)
product = %{name: "Green cup", price: 99, details: "Sturdy and handcrafted", tags: "green", inventory: 20}
Prios.Products.create_product(product, 2)
product = %{name: "Orange cup", price: 249, details: "Comfortable mug with heat control", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "tea spoon", price: 49, details: "comfy spoonlike stick", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "sugar spoon", price: 99, details: "spoon that holds on small brick of sugar", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "coffee spoon", price: 100, details: "perfect for your coffee", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "little red spoon", price: 50, details: "tiny and cute red spoon", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "medium blue spoon", price: 100, details: "medium crazy slick blue spoon", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
product = %{name: "large green spoon", price: 149, details: "this is one huge green spoon for those large cups", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)