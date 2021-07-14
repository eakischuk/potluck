require  './dish'

class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    categories = []
    @dishes.each do |dish|
      categories << dish.category
    end

    categories.uniq.sort.each do |category|
      @menu[category] = get_all_from_category(category)
    end
    @menu
    end
  end



# potluck = Potluck.new("7-13-18")
# couscous_salad = Dish.new("Couscous Salad", :appetizer)
# cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
# summer_pizza = Dish.new("Summer Pizza", :appetizer)
# roast_pork = Dish.new("Roast Pork", :entre)
# candy_salad = Dish.new("Candy Salad", :dessert)
# bean_dip = Dish.new("Bean Dip", :appetizer)
#
# potluck.add_dish(couscous_salad)
# potluck.add_dish(summer_pizza)
# potluck.add_dish(roast_pork)
# potluck.add_dish(cocktail_meatballs)
# potluck.add_dish(candy_salad)
# potluck.add_dish(bean_dip)
# puts potluck.menu
