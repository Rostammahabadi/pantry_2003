class Pantry
  attr_reader :stock

  def initialize()
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    @stock.each do |stock_ingredient, stock_amount|
      recipe.ingredients_required.each do |ingredient, amount|
        if @stock[ingredient] < amount
          return false
        end
      end
    end
    enough = true
  end

end
