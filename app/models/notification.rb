class Notification < ApplicationRecord
  # ----> ASSOCIATIONS
  belongs_to :event

  ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
  AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']

  def self.send_sms
    client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)

    from = ENV['TWILIO_NUMBER'] || '+17609194784'
    to = ENV['PERSONAL_NUMBER'] || '+17037897272'
    client.api.account.messages.create(
      from: from,
      to: to,
      body: "Hey friend!"
    )
  end

  def send_deploy_to_staging_reminder

  end

  def send_deploy_to_staging_reminder

  end
end
