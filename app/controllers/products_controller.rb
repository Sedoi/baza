class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @products = Product.new(params[:title])
    if @products.save
       redirect_to products_path
      # Товар успешно добавлен
    else
      redirect_to new_product_path

      # Ошибка!
      end
  end
end
