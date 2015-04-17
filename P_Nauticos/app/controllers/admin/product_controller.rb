class Admin::ProductController < ApplicationController
  def new
    load_data
    @product = Product.new
    @page_title = 'Añadir producto'
  end

  def create
    load_data
    @product = Product.new(brand_params)
    if @product.save
      flash[:notice] = "El producto #{@product.name} fue añadido."
      redirect_to :action => 'index'
    else
      @page_title = 'Añadir producto'
      render :action => 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
    @product = Product.all
    @page_title = 'Lista de productos'
  end

  def load_data
    @brands = Brand.all
  end

  private
  def brand_params
    params.require(:product).permit(:brands_id, :name, :price, :description, :product_img)
  end
end
