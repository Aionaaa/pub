class Customer

  attr_reader(:customer_name, :wallet, :age, :drunkenness)

  def initialize(customer_name, wallet, age, drunkenness)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end

  def get_drunk(drink)
    @drunkenness += drink.alcohol_level
  end

  def customer_eats_food(food)
    @drunkenness -= food.rejuvenation_level
  end









end
