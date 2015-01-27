require './user.rb'
require './product.rb'

jayson = User.new("Jayson", "Mandani")
puts jayson.full_name
jayson.add_product("apple", 1)
jayson.add_product("celery", 2)
jayson.add_product("orange", 3)
puts jayson.products


nicole = User.new("Nicole", "Kidman")
puts nicole.full_name
nicole.add_product("potato", 1)
nicole.add_product("raddish", 2)
puts nicole.products
