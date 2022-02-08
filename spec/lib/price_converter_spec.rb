require 'spec_helper'
require 'price_converter'

RSpec.describe PriceConverter do
  describe '#convert' do

    let(:btc) { 100 }
    let(:eth) { 50 }

    let(:price_converter) { PriceConverter.new(eth, btc) }
    # subject(:total) { price_converter.convert }

    subject { price_converter.convert }

    it { is_expected.to be 0.5 }
  end
end
