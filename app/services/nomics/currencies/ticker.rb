class Nomics::Currencies::Ticker < Nomics::Base
  def call
    response = api_request("#{API_URL}/currencies/ticker", options)
    api_response(response)
  end
end

# Nomics::Currencies::Ticker.call(ids:"BTC,ETH")
