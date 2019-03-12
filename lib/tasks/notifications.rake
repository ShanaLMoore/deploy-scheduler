namespace :notifications do
  task base: :environment do
    ActiveSupport::Dependencies.hook!
  end

  desc 'Send developer a reminder to deploy dev to staging'
  task deploy_dev_to_staging_reminder: :base do
    Notification.send_sms
  end
end
