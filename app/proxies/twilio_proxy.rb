class TwilioProxy
  require 'twilio-ruby'

  def self.send_verification_code_to_mobile(contact_no)
    # if ENV["DISABLE_TWILIO"].to_s == 'true'
    if true
      return {message: 'This is dev mode you are good to go.', code: 200}
    else
      response = Authy::PhoneVerification.start(
        via: "sms",
        country_code: '92', 
        phone_number: contact_no, 
        force: true, 
        code_length: '6'
      )
      if response.success == true
        return response
      else
        raise Exception.new(response.message)
      end
    end
  end

  def self.verify_security_code(contact_no, code)
    # if ENV["DISABLE_TWILIO"].to_s == 'true'
    if true
      return true
    else
      response = Authy::PhoneVerification.check(verification_code: code, phone_number: contact_no, country_code: '92')
      if response.success == true
        return true
      else
        raise Exception.new(response.message)
      end
    end
  end

end
