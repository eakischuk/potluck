require './lib/dish'

RSpec.describe Dish do
  describe 'dish' do
    it 'is a dish' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish).to be_a(Dish)
    end
  end
end
