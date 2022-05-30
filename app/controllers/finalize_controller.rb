class FinalizeController < ApplicationController
  before_action :find_user

  def index
    send_phone_verification_code
  end

  def create
    @user.update permit_params
  end

  def resend_verification_code
    send_phone_verification_code
  end

  private
  def permit_params
    params.require(:user).permit(:terms_and_conditions, :social_security_number, :dob, :verification_code)
  end

  def find_user
    @user = current_user
  end

  def send_phone_verification_code
    TwilioProxy.send_verification_code_to_mobile(@user.phone)
  end
end
