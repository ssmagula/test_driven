class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
  # Smag: this handles the creation of users, and what happens after submitting registration form
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome, friend. You're officially a member of LORAX!"
      redirect_to @user
    else
      render 'new'
    end
  end

end
