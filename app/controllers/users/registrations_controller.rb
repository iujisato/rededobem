class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  def new
    super do |resource|
      resource.build_user_data
    end
  end

  # def create
  #   super
  # end

  # def edit
  #   super
  # end

  # def update
  #   super
  # end

  # def destroy
  #   super
  # end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |sign_up_params|
      sign_up_params.permit(user_data_params)
    end
  end

  def user_data_params
    [
      :email,
      :password,
      :password_confirmation,
      :user_data_id,
      {
        user_data_attributes: [
          :name,
          :date_of_birth,
          :telephone,
          :education_level,
          :status,
          {
            user_adresses: [
              :street,
              :neighbourhood,
              :city
            ]
          }
        ]
      }
    ]
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  def after_sign_up_path_for(resource)
    super(resource)
  end
end
