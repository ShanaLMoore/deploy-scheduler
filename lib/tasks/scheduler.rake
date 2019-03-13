namespace :notifications do
  task base: :environment do
    ActiveSupport::Dependencies.hook!
  end

  desc 'Send developer a reminder to deploy dev to staging'
  task deploy_dev_to_staging_reminder: :base do
    Notification.dev_to_staging_reminder
  end

  desc 'Send developer a reminder a day before deploy to prod'
  task deploy_to_prod_reminder: :base do
    Notification.deploy_to_prod_reminder
  end
end
