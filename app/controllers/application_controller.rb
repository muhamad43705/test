class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
	  '/home'
	end

	def authenticated_user!
    store_origin_path
    authenticate_user!
  end
	
end
