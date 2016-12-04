class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new(params[:title])
    if @products.save
       redirect_to @products
      # Товар успешно добавлен
    else
      render 'new'

      # Ошибка!
      end
  end

  def show
    @product = Product.new
  end
end
