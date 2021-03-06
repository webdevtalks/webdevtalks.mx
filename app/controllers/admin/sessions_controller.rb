class Admin::SessionsController < AdminController

  skip_before_action :authorize!
  skip_before_action :verify_authenticity_token, only: :create

  def create
    @auth = Authorization.find_or_create_by_omniauth(omniauth_params)

    if @auth.valid?
      session[:user_id] = @auth.user_id
      redirect_to admin_path
    else
      redirect_to admin_login_path, alert: @auth.humanized_errors
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to admin_login_path
  end

  def new
  end

  private

  def omniauth_params
    OmniauthHash.new(request.env['omniauth.auth']).permit!
  end

end
