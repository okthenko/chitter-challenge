require 'message'
require 'capybara/rspec'

describe Message do
    describe '.add' do
        it 'adds a message' do
            Message.add('Goodbye')
            expect(Message.list).to include('Goodbye')
        end
    end
end