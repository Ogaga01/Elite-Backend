class Users::Api::V1::TokensController < Devise::Api::TokensController
# rubocop:disable Metrics/MethodLength
  def sign_in
    super
  end
      
# rubocop:enable Metrics/MethodLength
  private

  def sign_up_params
    params.permit(:name, :telephone, *resource_class.authentication_keys,
                  *::Devise::ParameterSanitizer::DEFAULT_PERMITTED_ATTRIBUTES[:sign_up]).to_h
  end
end
