require 'rails_helper'

describe Player do
    context 'when validates' do
        it 'attributes cannot be blank' do
          player = described_class.new

          player.valid?

          expect(player.errors[:name]).to include('Cannot be blank')
        end
    end
end