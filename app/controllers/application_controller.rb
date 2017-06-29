class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   settings_path
  # end
  def after_sign_in_path_for(resource)
  	if admin_user_signed_in?
  		admin_dashboard_path
  	elsif user_signed_in?
  		root_path
  	end
  end
  add_flash_types :danger, :info, :warning, :succes
end
