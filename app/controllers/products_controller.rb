class ProductsController < ApplicationController
  def index
    @products = Product.all.each
  end
  def new
    if @products == Product.create(params[:title])
      redirect_to products_path
      # Товар успешно добавлен
    else
      redirect_to new_product_path

      # Ошибка!
      end
  end
end
