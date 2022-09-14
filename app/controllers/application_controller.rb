class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:top, :about]

  def after_sign_in_path_for(resources)
    user_path(current_user)
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to user_path(user.id)
    else
      render :new
    end
    
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end
end
