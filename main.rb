require './user.rb'
require './product.rb'

apple = Product.new("Apple", "lalala")
orange = Product.new("Orange", "lalala")
celery = Product.new("Celery", "lalala")

jayson = User.new("Jayson", "Mandani")
puts jayson
puts jayson.full_name
jayson.add_product(apple)
jayson.add_product(apple)
jayson.add_product(orange)
jayson.add_product(apple)
jayson.add_product(celery)
puts jayson.products


# nicole = User.new("Nicole", "Kidman")
# puts nicole.full_name
# nicole.add_product("potato")
# nicole.add_product("raddish")
# puts nicole.products
