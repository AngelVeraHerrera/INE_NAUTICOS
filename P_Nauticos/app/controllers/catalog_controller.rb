class CatalogController < ApplicationController
  def index
      @products= Product.order("products.id desc")
      .includes(:brand)
      .paginate(:page => params[:page], :per_page => 5)
      @page_title = 'Catálogo'
  end

  def show
    @product = Product.find(params[:id])
    @page_title = @product.name
  end

  def search
    #method pending
  end

  def latest
    @products = Product.latest 5
    @page_title = 'Últimos Productos'
  end
end
