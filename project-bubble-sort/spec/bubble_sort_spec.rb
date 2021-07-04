require 'spec_helper'
require_relative '../lib/bubble_sorter'

describe BubbleSorter do
    test_object = BubbleSorter.new

    describe 'bubble sorter' do
        it 'passes increasing test' do
            expect(test_object.bubble_sort([1,2,3,4])).to eql([1,2,3,4])
        end
        it 'passes decreasing test' do
            expect(test_object.bubble_sort([5,4,3,2])).to eql([2,3,4,5])
        end
        it 'passes random test' do
            expect(test_object.bubble_sort([2,1,3,7])).to eql([1,2,3,7])
        end
    end
end
