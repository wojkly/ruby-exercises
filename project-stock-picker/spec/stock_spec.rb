require 'spec_helper'
require_relative '../lib/stock_picker'

describe StockPicker do
    test_object = StockPicker.new

    describe 'stock picker' do
        it 'passes increasing test' do
            expect(test_object.stock_picker([1,2,3,4])).to eql([0,3])
        end
        it 'passes decreasing test' do
            expect(test_object.stock_picker([7,5,5,2])).to eql([1,2])
        end
        it 'passes random test' do
            expect(test_object.stock_picker([17,3,6,9,15,8,6,1,10])).to eql([1,4])
        end
        it 'returns nil when no profitable option' do
            expect(test_object.stock_picker([7,6,5,4,3,2,1])).to eql(nil)
        end
    end
end
