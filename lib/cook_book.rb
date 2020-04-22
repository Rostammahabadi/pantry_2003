class CookBook
  attr_reader :recipes
  def initialize()
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
      recipe.ingredients_required.map do |ingredient, amount|
        ingredient.name
      end
    end.flatten.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe |
      recipe.total_calories
    end

  end

end
