class User
  attr_accessor :first_name, :last_name

  def initialize first_name, last_name
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # def convert_to_sentence products
  #   connectors = {
  #     comma: ', ',
  #     length_two: ' and ',
  #     more_than_two: ', and '
  #   }
  #
  #   case products.length
  #   when 0
  #     ''
  #   when 1
  #     products[0].to_s.dup
  #   when 2
  #     "#{products[0]}#{connectors[:length_two]}#{products[1]}"
  #   else
  #     "#{products[0...-1].join(connectors[:comma])}#{connectors[:more_than_two]}#{products[-1]}"
  #   end
  # end
  #
  # private

  # def product_list
  #   @product_list = [] # [{}, {}]
  # end
end
