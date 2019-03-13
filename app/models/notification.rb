class Notification < ApplicationRecord
  # ----> ASSOCIATIONS
  belongs_to :event

  ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
  AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']

  def self.dev_to_staging_reminder
    client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)
    name = Developer.first.name

    from = ENV['TWILIO_NUMBER'] || '+17609194784'
    to = ENV['PERSONAL_NUMBER'] || '+17037897272'
    client.api.account.messages.create(
      from: from,
      to: to,
      body: "Hey #{name}! Don't forget to deploy dev to staging!"
    )
  end

  def self.deploy_to_prod_reminder
    client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)
    name = Developer.first.name

    from = ENV['TWILIO_NUMBER'] || '+17609194784'
    to = ENV['PERSONAL_NUMBER'] || '+17037897272'
    client.api.account.messages.create(
      from: from,
      to: to,
      body: "Hey #{name}! Are you ready for tomorrow's deploy?"
    )
  end
end
