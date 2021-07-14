require './lib/dish'

RSpec.describe Dish do
  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end
  describe 'dish' do
    it 'is a dish' do
      # dish = Dish.new("Couscous Salad", :appetizer)
      expect(@dish).to be_a(Dish)
    end

    it 'has a name' do
      expect(@dish.name).to eq("Couscous Salad")
    end

    it 'has a category' do
      expect(@dish.category).to eq(:appetizer)
    end
  end
end
