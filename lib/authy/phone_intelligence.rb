module Authy
  class PhoneIntelligence < Authy::API

    # options:
    #   :via (sms|call)
    #   :country_code Numeric calling country code of the country.
    #   :phone_number The persons phone number.
    def self.verification_start(params)
      params[:via] = "sms" unless %w(sms, call).include?(params[:via])

      post_request("protected/json/phones/verification/start", params)
    end

    # options:
    #   :country_code Numeric calling country code of the country.
    #   :phone_number The persons phone number.
    #   :verification_code The verification code entered by the user.
    def self.verification_check(params)
      get_request("protected/json/phones/verification/check", params)
    end

    # options:
    #   :country_code Numeric calling country code of the country.
    #   :phone_number The persons phone number.
    def self.info(params)
      get_request("protected/json/phones/info", params)
    end
  end
end