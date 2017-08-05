class ProductsController < ApplicationController
    def index
    @products = Product.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @products}
    end
  end

  def show
    @product = Product.find(param[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @product}
    end    
  end
end
