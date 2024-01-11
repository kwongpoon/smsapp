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
        "ACc55bc6ab11fe3f8d38cb402fe803a0bc"
      end

      def auth_token
        "eb60987de53f9753c5fd916d8afad3a0"
      end

      def from_phone
        "+18337024593"
      end
  end

end