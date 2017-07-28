class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end

# If you are using latest version of Devise and the code above gives you an error where it cannot find the method 'for', you need to change the code for the two sanitizer lines to look like below:

# def configure_permitted_parameters
# devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
# devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
# end

# And older versions:
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name)
  #   devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name)
  # end