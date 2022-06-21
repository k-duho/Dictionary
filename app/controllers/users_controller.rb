class UsersController < ActionController::Base
  include UserAuthentication

  def new
    @user = User.new
  end

  def login
    @user = User.find_by!(mail: login_params[:mail])
    if @user.authenticate(login_params[:password])
      set_cookie_to_login_user
      redirect_to dashboards_url and return
    else
      flash.now[:danger] = "로그인 정보를 확인해주세요."
    end
  end

  private

  def login_params
    params.require(:user).permit(%i[mail password])
  end
end
