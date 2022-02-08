require 'rails_helper'
require 'rspec_api_documentation/dsl'

before(:each) do
  stub_request(:any, /api.nomics.com/).to_return(status: 200, body: "{}", headers: {})
end

resource "ExchangeRates" do
  get "/api/v1/exchange_rates" do
    example "Listing Exchange Rates" do
      do_request

      expect(status).to eq 200
    end
  end
end
