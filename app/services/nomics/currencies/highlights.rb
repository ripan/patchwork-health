class Nomics::Currencies::Highlights < Nomics::Base
  def call
    response = api_request("#{API_URL}/currencies/highlights", options)
    api_respoonse(response)
  end
end

# Nomics::Currencies::Highlights.call(currency: 'BTC', convert: 'ZAR', interval: '1h')
