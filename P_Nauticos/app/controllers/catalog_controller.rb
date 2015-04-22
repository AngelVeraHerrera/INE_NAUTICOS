class CatalogController < ApplicationController
  def index
      @products= Product.order("products.id desc").includes(:brands).paginate(:page => params[:page], :per_page => 5)
      @page_title = 'Catálogo'
  end

  def show
    @product = Product.find(params[:id])
    @page_title = @product.name
  end

  def search
  end

  def latest
  end
end
