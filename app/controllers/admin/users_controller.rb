class Admin::UsersController < ApplicationController
  
  # before_action :authenticate_user!
  
  respond_to :html, :json
  layout "admin"
  
  def index
    @users = User.paginate(:page => params[:page], :per_page => 2).order("created_at DESC")
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path
    else 
      "new"
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])    
  end
  
  def destroy
    @user = User.find(params[:id]).destroy
  end
  
  private

  def user_params
    params.require(:user).permit(:full_name, :email_address)
  end
  
end
