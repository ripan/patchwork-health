class Api::V1::CurrenciesController < ApplicationController
  def index
    currencies = Nomics::Currencies::List.call(ids:"BTC,ETH,XRP")
    render json: currencies
  end

  def ticker
    ticker = Nomics::Currencies::Ticker.call(ids:"BTC,ETH")
    render json: ticker

  end

  def highlights
    highlights = Nomics::Currencies::Highlights.call(currency: 'BTC', convert: 'ZAR', interval: '1h')
    render json: highlights
  end
end
