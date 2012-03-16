class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
  # Smag: this seems to be working...save for the notice
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome friend. You are officially a member of LORAX!"
      redirect_to @user
    else
      render 'new'
    end
  end

end
