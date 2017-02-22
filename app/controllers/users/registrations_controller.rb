class Users::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  # def new
  #   super
  # end

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

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(nested_sign_up_params)
  end

  def nested_sign_up_params
    [
      :sign_up,
      user_informations: [
        :name,
        :date_of_birth,
        :telephone,
        :education_level,
        :status,
        user_adresses: [
          :street,
          :neighbourhood,
          :city
        ]
      ]
    ]
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
