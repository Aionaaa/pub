class Pub

  attr_reader(:name, :till)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end

  def number_of_drinks()
    return @drinks.length
  end

  def sell_drink(drink)
    @till += drink.price
  end



end
