require './lib/ingredient'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ReceipeTest < MiniTest::Test
  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")

    assert_equal "Mac and Cheese", receipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end




end
