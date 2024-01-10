class SmsController < ApplicationController
  def index
  end

  def send_sms

    to_phone = params['to_phone']
    body = params['body']

    exmsg = nil
    response = nil

    begin
      response = SmsServices::TwilioClient.new.send_sms(to_phone, body)
    rescue StandardError => ex
      exmsg = ex.message
    end

    if exmsg.blank? 
      flash[:notice] = "SMS was successfully sent."
    else
      flash[:notice] = "SMS was not successfully sent: #{exmsg}"
    end

    redirect_to '/sms/index'

  end

end
