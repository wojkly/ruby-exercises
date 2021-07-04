
require 'spec_helper'
require_relative '../lib/main.rb'

describe Cipher do
    subject { Cipher.new }

    describe 'caesar cipher' do
        it 'works with right shift' do
            expect(subject.caesar_cipher('aaa', 7)).to eql('hhh')
        end

        it 'works with left shift' do
            expect(subject.caesar_cipher('fff', -6)).to eql('zzz')
        end

        it 'works with big right shift' do
            expect(subject.caesar_cipher('asdf', 1500)).to eql('skvx')
        end

        it 'works with big left shift' do
            expect(subject.caesar_cipher('skvx', -1500)).to eql('asdf')
        end

        it 'works with other symbols' do
            expect(subject.caesar_cipher('!@#^&({}{][', 17)).to eql('!@#^&({}{][')
        end

    end
end