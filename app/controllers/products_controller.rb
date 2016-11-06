class ProductsController < ApplicationController
  def index
    @tovars = Tovar.all.each
  end
  def new
    @tovars = Tovar.new
  end
end
