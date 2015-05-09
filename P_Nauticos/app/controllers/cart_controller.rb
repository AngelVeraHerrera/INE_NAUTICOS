class CartController < ApplicationController
	before_filter :initialize_cart
	def add
		@product = Product.find params[:id]
		@page_title = 'Agregar al carrito'
		if request.post?
			@item = @cart.add params[:id]
			flash[:cart_notice] = "Añadido <em>#{@item.product.name}</em>."
			redirect_to :controller => 'catalog'
		else
			render :controller => 'cart', :action => 'add', :template => 'cart/add'
		end
	end

  def remove
	@product = Product.find params[:id]
    @page_title = 'Eliminar del carrito'
    if request.post?
      @item = @cart.remove params[:id]
      flash[:cart_notice] = "Eliminado 1 <em>#{@item.product.name}</em>."
      redirect_to :controller => 'catalog'
    else
      render :controller => 'cart', :action => 'remove'
    end
  end

	def clear
		    @page_title = 'Vaciar carrito'
    if request.post?
      @cart.cart_items.destroy_all
      flash[:cart_notice] = "Tu carrito ha sido vaciado."
      redirect_to :controller => 'catalog'
    else
      render :controller => 'cart', :action => 'clear'
    end
	end
end
