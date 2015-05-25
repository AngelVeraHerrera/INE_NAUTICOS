class Admin::OrderController < Admin::AuthenticatedController
  def index
    @status = params[:id]
    if @status.blank?
      @status = ''
      conditions = nil
    else
      conditions = "status = '#{@status}'"
    end
    @orders = Order.where(conditions).paginate(:page => params[:page], :per_page => 10)
    @page_title = @status.blank? ? "Lista de pedidos #{@status}" : "Lista de pedidos #{@status}s"
  end

  def close
    order = Order.find(params[:id])
    order.close
    flash[:notice] = "Order ##{order.id} has been cerrado."
    redirect_to :action => 'index'
  end

  def show
    @order = Order.find(params[:id])
    @page_title = "Displaying order ##{@order.id}"
  end
end
