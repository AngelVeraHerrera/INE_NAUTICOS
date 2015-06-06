class PasswordResetsController < ApplicationController
  before_filter :require_no_user
  before_filter :load_user_using_perishable_token, :only => [ :edit, :update ]
  def new
    @page_title = 'Recuperar Contraseña'

  end

  def create
    @user = User.find_by_email(params[:email])

    if @user.present?
      @user.deliver_password_reset_instructions!
      flash[:notice] = "Las instrucciones para recueprar tu contraseña han sido enviadas a tu correo."
      redirect_to root_path
    else
      flash[:notice] = "No user was found with email address #{params[:email]}"
      render :action => :new
    end
  end

  def edit
    @page_title = 'Actualizar Contraseña'
  end

  def update
    @user.password = params[:password]
    @user.password_confirmation = params[:password]

ap @user

    if @user.save
      flash[:notice] = "Enhorabuena, tu contraseña ha sido actualizada!"
      redirect_to :controller => 'user', :action => :show
    else
      flash[:notice] = "Ocurrió un error al momento de actualizar tus datos. Por favor intenta de nuevo más tarde"
      render :action => :edit
    end
  end

  private
  def load_user_using_perishable_token
    @user = User.find_using_perishable_token(params[:id])
    unless @user
      flash[:notice]  = "Lo sentimos, no pudimos encontrar tu cuenta. Por favor intenta de nuevo más tarde"
      redirect_to root_url
    end
  end
end
