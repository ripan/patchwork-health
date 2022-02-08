class Api::V1::ExchangeRatesController < ApplicationController
  def index
    exchange_rates = Nomics::ExchangeRates::List.call(ids:"BTC")
    render json: exchange_rates
  end
end
