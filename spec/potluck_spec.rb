require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  describe 'potluck' do

    it 'is a potluck'do
      expect(@potluck).to be_a(Potluck)
    end

    it 'has a date' do
      expect(@potluck.date).to eq("7-13-18")
    end

    it 'starts without dishes' do
      expect(@potluck.dishes).to eq([])
    end

  end
end
