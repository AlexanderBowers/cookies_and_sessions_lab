class ProductsController < ApplicationController

    def index
        @products = Product.all 
        @product = Product.new
    end

    def add
        session[:cart] << params[:product]
        redirect_to products_path
    end
    private

    def product_params
        params.require(:product).permit(:product)
    end
end
