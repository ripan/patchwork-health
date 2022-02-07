require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Currencies" do
  get "/api/v1/currencies" do
    example "Listing currencies" do
      do_request

      expect(status).to eq 200
    end
  end

  get "/api/v1/currencies/ticker" do
    example "Listing currencies" do
      do_request

      expect(status).to eq 200
    end
  end

  get "/api/v1/currencies/highlights" do
    example "Listing currencies" do
      do_request

      expect(status).to eq 200
    end
  end
end
