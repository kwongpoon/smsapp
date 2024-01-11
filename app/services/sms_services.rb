require 'twilio-ruby'
require 'byebug'

module SmsServices

  class TwilioClient
    attr_reader :client

    def initialize
      @client = Twilio::REST::Client.new account_sid, auth_token
    end

    def send_sms(to_phone, body)
      result = client.messages.create(
        from: from_phone,
        to: to_phone,
        body: body
      )
      return result
    end

    private
      # replace with an upgrade (non trail) Twilio account (account_id, auth_token, and from_phone)
      def account_sid
        Rails.application.credentials.twilio[:account_sid]
      end
  
      def auth_token
        Rails.application.credentials.twilio[:auth_token]
      end
  
      def from_phone
        Rails.application.credentials.twilio[:from_phone]
      end      
  end

end