require 'rubygems'
require 'active_support'
require 'active_support/core_ext'

require './user.rb'
require './product.rb'

apple  = Product.new('Apple', 'Juicy fruit')
orange = Product.new('Orange', 'Juicy fruit')
celery = Product.new('Celery', 'Juicy fruit')
jayson = User.new("Jayson", "Mandani")

puts jayson.full_name
jayson.add_product(apple)
jayson.add_product(apple)
jayson.add_product(orange)
jayson.add_product(orange)
jayson.add_product(celery)
jayson.add_product(apple)
# jayson.add_product(apple)
# jayson.add_product(apple)
puts jayson.products
puts jayson.hash_to_array.to_sentence
# puts %w[as das adsf af].to_sentence
# puts 'apple'.pluralize(2)


# nicole = User.new("Nicole", "Kidman")
# puts nicole.full_name
# nicole.add_product("potato")
# nicole.add_product("raddish")
# puts nicole.products
