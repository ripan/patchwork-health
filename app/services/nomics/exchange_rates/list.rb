class Nomics::ExchangeRates::List < Nomics::Base
  def call
    response = api_request("#{API_URL}/exchange-rates", options)
    api_response(response)
  end
end

# Nomics::ExchangeRates::List.call
