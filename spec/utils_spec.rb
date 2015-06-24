require 'rspec'
require 'maini/utils'

describe Maini::Utils do

  context 'Array' do

    before do
      @items = ['one', 'two', 'three','four', 'five']
    end

    context 'except()' do

      it 'except (with 1 argument)' do
        expect(@items.except('one').count).to eq(4)
      end

      it 'except (with 2 argument)' do
        expect(@items.except('one', 'two').count).to eq(3)
      end

      it 'except (with 1 Array argument)' do
        expect(@items.except(['one','two']).count).to eq(3)
      end

    end

  end
end
