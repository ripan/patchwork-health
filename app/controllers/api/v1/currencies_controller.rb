class Api::V1::CurrenciesController < ApplicationController
  def index
    render json: Nomics::Currencies::List.call(ids:params[:ids], page: page, per_page: per_page)
  end

  def ticker
    render json: Nomics::Currencies::Ticker.call(ids:params[:ids])

  end

  def highlights
    render json: Nomics::Currencies::Highlights.call(currency: params[:currency], convert: params[:convert], interval: params[:interval])
  end
end
