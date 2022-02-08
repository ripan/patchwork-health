class PriceConverter
  attr_accessor :base_currency_price, :reference_currency_price
  def initialize(base_currency_price, reference_currency_price)
    @base_currency_price = base_currency_price
    @reference_currency_price = reference_currency_price
  end

  def convert
    base_currency_price.to_f/reference_currency_price.to_f
  end
end