class Api::V1::ExchangeRatesController < ApplicationController
  def index
    render json: Nomics::ExchangeRates::List.call
  end
end
