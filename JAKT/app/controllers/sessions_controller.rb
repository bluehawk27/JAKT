class SessionsController < ApplicationController
  def new

  end

  def create
    p params
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      p 'we are here'
      redirect_to users_path
    else
      @errors = "Incorrect email or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
