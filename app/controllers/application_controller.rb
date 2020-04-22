class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_group

  rescue_from CanCan::AccessDenied, Exceptions::AccessDenied, :with => :show_error_message

  def current_group
    Group.first
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    registration_params = [:email, :password, :password_confirmation, :name]

    if params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) do
        |u| u.permit(registration_params)
      end
    end
  end

  def collection_authorize!(action, collection, *args)
    collection.each do |item|
      is_authorized? action, item, *args
    end
  end

  def is_authorized?(action, resource, expertizeNeeded=false)

    # Use Cancan
    authorize! action, resource
    # Use Rolify if requested


    if expertizeNeeded
      unless current_user && (current_user.admin? || current_user.group_admin_of?(current_group) || current_user.is_expert_of?(resource))

        raise Exceptions::AccessDenied
      end
    end
  end

  def show_error_message(exception)
    redirect_to root_url, :alert => exception.message
  end

  def default_serializer_options
    {root: true}
  end
  
end
