class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      redirect_to blogs_path
    else
      render :new
    end
  end
end
