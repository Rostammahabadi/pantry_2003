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

  def date
    "04-22-2020"
  end

  def summary
    recipe_names = @recipes.map{|recipe|recipe.name}
    ingredients_list = ingredients
    # amounts = @recipes.each_with_object({}) do |recipe, acc|
    #   recipe.ingredients_required.each do |ingredient, amount|
    #     acc[:ingredient] ||= {}
    #     acc[:amount] ||= {}
    #     acc[:ingredient] = ingredient.name
    #     acc[:amount] = (amount.to_s + ingredient.unit)
    #   end
    # end
    # summaries = []
    # summary_details = {}
    # recipe_names.each do |recipe|
    #   summaries << (summary_details[:name] = recipe)
    #   summaries << (summary_details[:details] ={})
    #   summaries << (summary_details[:amount] = "")
    # end
    # summary_deatils = {name: "", details: {}, total_calories: ""}
    # binding.pry
    # outer_array = []
    # first_hash = {}
    # details_hash= {}
    # ingredients_array =[]
    # ingredients_hash = {}
    # final_hash = recipe_names.each do |recipe|
    #   first_hash[:name] = recipe
    # end
    # inner_hash = {}
    # @recipes.each do |recipe|
    #   recipe.ingredients_required.each do |ingredient, amount|
    #   inner_hash[:ingredient] = ingredient.name
    #   inner_hash[:amount] = (amount.to_s + ingredient.unit)
    #   if ingredients_array.include?(innerh_hash[:ingredient])
    #     inner_hash[:amount]
    #   ingredients_array << inner_hash
    #   binding.pry
    # end
    # end
  end

end
