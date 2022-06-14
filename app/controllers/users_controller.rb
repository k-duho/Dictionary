class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def login
    @user = User.find_by(mail: login_params[:mail])
    
    if @user.authenticate(login_params[:password])
      token = SecureRandom.urlsafe_base64
      @user.update(remember_token: Digest::SHA256.hexdigest(token.to_s))
      cookies.permanent[:user_remember_token] = token
    else
    end
  end

  private

  def login_params
    params.require(:user).permit(%i[mail password])
  end
end
