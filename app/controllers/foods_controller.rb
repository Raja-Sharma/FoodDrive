class FoodsController < ApplicationController

  def index
    @foods =  Food.where('id NOT IN (SELECT DISTINCT(food_id) FROM claimed_foods)')
  end

  def show

  end

  def new

  end

  def create

  end

end
