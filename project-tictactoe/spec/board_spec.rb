require 'spec_helper'
require_relative '../lib/board'

describe Board do
    test_object = Board.new

    it 'create empty board' do
        expect(test_object.fields.all?(" ")).to eql(true )
    end
end

