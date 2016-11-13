class ProductsController < ApplicationController
  def index
    @tovars = Tovar.all.each
  end
  def new
    if @tovars = Tovar.new(params[:tovar])
      # Товар успешно добавлен
    else
      # Ошибка!
      end
  end
end
