require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/pantry'

class PantryTest < MiniTest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_has_attributes
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

  def test_it_can_check_stock_and_restock_ingredient
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check(ingredient1)
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new("Macaroni", "oz", 200)
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)
    pantry.restock(ingredient2, 7)
    assert_equal 7, pantry.stock_check(ingredient2)
  end

  
end
