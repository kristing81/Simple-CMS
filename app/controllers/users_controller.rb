class UsersController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in

  def index
    @users = User.sorted
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was successfully created"
      redirect_to(:action => 'index')
    else
      flash[:notice] = "There was an error saving your user.  Please try again."
      render :new
    end
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to(:action => 'index')
    else
      flash[:notice] = "There was an error updating your user.  Please try again."
      render :edit
    end   
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id]).destroy
    flash[:notice] = "User was successfully deleted"
    redirect_to(:action => 'index')
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password)
  end

end
