class SessionsController < ApplicationController

  def create
    #binding.pry
    @user= User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
  end

  private
  def session_params
    params.require(:user).permit(:user, :password, :password_confirmation)
  end
end
