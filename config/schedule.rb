  set :job_template, nil
  set :output, { error: 'log/cron.log', standard: 'log/cron.log' }
  job_type :rake,    "cd :path && :environment_variable=:environment bundle exec rake :task --silent :output"

  every 5.minutes do
    rake "notifications:deploy_dev_to_staging_reminder"
  end
