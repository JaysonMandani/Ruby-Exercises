require 'rubygems'
require 'active_support'
require 'active_support/core_ext'

require './user.rb'
require './product.rb'
require './cart.rb'

apple  = Product.new('Apple', 'Juicy fruit')
orange = Product.new('Orange', 'Juicy fruit')
celery = Product.new('Celery', 'Juicy fruit')
jayson = User.new("Jayson", "Mandani")
sarah  = User.new("sarah", "Rae")

jaysons_cart = Cart.new(jayson)
sarahs_cart = Cart.new(sarah)

puts jayson.full_name

jaysons_cart.add(apple)
jaysons_cart.add(apple)
jaysons_cart.add(orange)
jaysons_cart.add(orange)
jaysons_cart.add(celery)
jaysons_cart.add(apple)

sarahs_cart.add(apple)

puts jaysons_cart.products
puts jaysons_cart.products_to_sentence

puts sarahs_cart.products_to_sentence
