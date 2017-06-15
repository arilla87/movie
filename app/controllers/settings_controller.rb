class SettingsController < ApplicationController
	layout "admin"

  def index
    @setting = current_user.setting
  end

  def show
    @setting = current_user.setting
  end


 
end

