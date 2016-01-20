class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all.order("created_at DESC")
  end

  def show
  end

  def new
    @product = Product.new
    @product.parts.build
    @parts = Part.all.map{ |p| [p.title, p.id] }
  end

  def create
    @product = Product.new(product_params)
    @quantity = params[:quantity]
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

    def product_params
      params.require(:product).permit(:title, :description, :image, :parts, :part_ids, parts_attributes: [:id, :title, :quantity, :_destroy])
    end

    def find_product
      @product = Product.find(params[:id])
    end

end
