class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "You could add new item:)"
      redirect_to action: :index
    else
      flash.now[:error] = "You couldn't add an item."
      render 'new'
    end

  end

  def product_params
    params.require(:product).permit(:title, :description)
  end



end