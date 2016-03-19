class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def layout
			if !user_signed_in?
				#return "devise_layout"

				    return "../welcome/index"
			else
				return "../dashboard/index"
			end
  end
  
  def after_sign_in_path_for(resource)
  dashboard_index_path #or whatever path helper you need
  end
end
