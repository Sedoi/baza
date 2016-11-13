class ProductsController < ApplicationController
  def index
    @products = Product.all.each
  end
  def new
    if @products = Product.new(params[:product])
      # Товар успешно добавлен
    else
      # Ошибка!
      end
  end
end
