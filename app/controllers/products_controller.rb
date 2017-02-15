class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to action: :index
    else

      render 'edit'
    end
  end

  def new
    @product = Product.new
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to action: :index
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