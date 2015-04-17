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
        @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "La marca #{@product.name} fue eliminada."
    redirect_to :action => 'index'
  end

  def show
    @product = Product.find(params[:id])
    @page_title = @product.name
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
