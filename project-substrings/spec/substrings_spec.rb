require 'spec_helper'
require_relative '../lib/substrings.rb'

describe Substrings do
    test_object = Substrings.new

    describe 'substrings' do
        it 'passed first test' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            expect(test_object.get_substrings("below", dictionary)).to eql({ "below" => 1, "low" => 1 })
        end

        it 'passed second test' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            expect(test_object.get_substrings("Howdy partner, sit down! How's it going?", dictionary)).to eql({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
        end
    end
end
