class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  #Devise 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

		def after_sign_up_path_for
      		jobs_path
    	end

    	def after_update_path_for
     		jobss_path
    	end
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :password, :password_confirmation]) 
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password, :rate]) 
        end
end
