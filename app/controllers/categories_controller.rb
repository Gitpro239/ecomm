class CategoriesController < ApplicationController
  def show
    # @category = Category.includes(:products).all
    @category = Category.find(params[:id])
    @products = @category.products
  end
end
