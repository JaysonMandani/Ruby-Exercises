class Cart
  attr_accessor :user

  def initialize(user)
    @user = user
    @list = []
  end

  def add(product)
    if @list.empty? || !@list.any? { |hash| hash[:name] == product.name }
      @list << { name: product.name, quantity: 1 }
    else
      index = @list.index { |product_hash| product_hash[:name] ==  product.name }
      @list.fetch(index)[:quantity] += 1
    end
  end

  def products
    @list
  end

  def products_to_sentence
    hash_to_array.to_sentence
  end

  private

  def hash_to_array
    @list.map { |h| "#{h[:quantity]} #{h[:name].pluralize(h[:quantity])}" }
  end
end
