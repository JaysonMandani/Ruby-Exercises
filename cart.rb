class Cart
  attr_reader :quantity

  def initialize user
    @user = user

    @product_list = []
  end

  def add product
    if @product_list.empty? || !@product_list.any? { |hash| hash[:name] == product.name }
      @product_list << { name: product.name, quantity: 1 }
    else
      index = @product_list.index { |product_hash| product_hash[:name] ==  product.name }
      @product_list.fetch(index)[:quantity] += 1
    end
  end

  def products
    @string = []
    @product_list.each do |p|
      @string << "#{p[:quantity]} #{p[:name]}"
    end
    @product_list
    # convert_to_sentence @string
  end

  def convert_to_sentence products
    connectors = {
      comma: ', ',
      length_two: ' and ',
      more_than_two: ', and '
    }

    case products.length
    when 0
      ''
    when 1
      products[0].to_s.dup
    when 2
      "#{products[0]}#{connectors[:length_two]}#{products[1]}"
    else
      "#{products[0...-1].join(connectors[:comma])}#{connectors[:more_than_two]}#{products[-1]}"
    end
  end

  def products_to_sentence
    hash_to_array.to_sentence
  end

private

  def hash_to_array
    @product_list.map { |h| "#{h[:quantity]} #{h[:name].pluralize(h[:quantity])}" }
  end

end
