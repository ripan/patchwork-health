require 'rails_helper'
require 'rspec_api_documentation/dsl'

before(:each) do
  stub_request(:any, /api.nomics.com/).to_return(status: 200, body: "{}", headers: {})
end

resource "Currencies" do
  get "/api/v1/currencies" do

    parameter :ids, 'Comma separated list of Nomics Currency IDs to filter result rows'
    let(:ids) { 'BTC,ETH,XRP' }

    example "Listing currencies" do
      do_request

      expect(status).to eq 200
    end
  end

  get "/api/v1/currencies/ticker" do

    parameter :page, 'Page number'
    parameter :per_page, 'Records per page'
    parameter :ids, 'Comma separated list of Nomics Currency IDs to filter result rows'
  
    let(:page) { 1 }
    let(:per_page) { 3 }
    let(:ids) { 'BTC,ETH,XRP' }

    example "Listing Currencies Ticker" do
      do_request

      expect(status).to eq 200
    end
  end

  get "/api/v1/currencies/highlights" do

    parameter :currency, 'Currency ID'
    parameter :convert, 'Currency to quote ticker price, market cap, and volume values. May be a Fiat Currency or Cryptocurrency. Default is USD'
    parameter :interval, 'Time interval. Defaults to 1d'
 
    let(:currency) { 'BTC' }
    let(:convert) { 'ZAR' }
    let(:interval) { '1h' }

    example "Currency Highlights" do
      do_request

      expect(status).to eq 200
    end
  end
end
