require './user.rb'
require './product.rb'

jayson = User.new("Jayson", "Mandani")
puts jayson.full_name
jayson.add_product("apple")
jayson.add_product("apple")
jayson.add_product("orange")
puts jayson.products


# nicole = User.new("Nicole", "Kidman")
# puts nicole.full_name
# nicole.add_product("potato")
# nicole.add_product("raddish")
# puts nicole.products
