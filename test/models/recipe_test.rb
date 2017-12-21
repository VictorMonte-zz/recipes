require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "chicken parm", sumary: "this is the best chicken parm recipe ever",
             description: "heat oil, add onions, add tomatoes, add chicken, cook for 20 min")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

end
