class User
  attr_reader :quantity

  def initialize first_name, last_name
    @first_name = first_name
    @last_name  = last_name

    @products = []
  end

  def add_product product
    quantity = 1
    item  = { name: product.product_name, quantity: quantity }

    unless @products.empty?
      @products.index do |product_name|
        if product_name[:name] == product.product_name
          product_name[:quantity] += 1
        else
          @products << item
        end
      end
    else
      @products << item
    end
  end

  def products
    @string = []
    @products.each do |p|
      @string << "#{p[:quantity]} #{p[:name]}"
    end
    @products
    # convert_to_sentence @string
  end

  def full_name
    "#{@first_name} #{@last_name}"
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

private
  def product_list
    @products = []
  end
end
