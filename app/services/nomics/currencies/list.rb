class Nomics::Currencies::List < Nomics::Base
  def call
    response = api_request("#{API_URL}/currencies", options)
    api_respoonse(response)
  end
end

# Nomics::Currencies::List.call(ids:"BTC,ETH,XRP")
