class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session] [:email])
    if user && user.authenticate(params[:session] [:password])
      # sign the user in and redirect to user profile, or show page
      sign_in user
      redirect_to user
    else flash.now[:error] = 'The email and password combination was not valid'
      render 'new'
    end
  end
  
  def destroy
    sign_out
    # Smag the flash msg must come before the rendering of a new page
    flash.now[:success] = 'You have logged out of LORAX. Don\'t be a stranger. Come back soon'
    render 'new'
  end
end
