namespace :sidekiq do
  desc "Start sidekiq"
  task :start, roles: :app do
  	run "cd #{current_path} && nohup bundle exec sidekiq -e #{rails_env} -q carrierwave -q default -P #{shared_path}/pids/sidekiq.pid >> #{current_path}/log/sidekiq.log < /dev/null 2>&1 & sleep 1"
  end

  desc "Stop sidekiq"
  task :stop do
    run "cd #{current_path} && bundle exec sidekiqctl stop #{shared_path}/pids/sidekiq.pid 60"
  end

  desc "Quiet sidekiq"
  task :quiet do
    run "cd #{current_path} && bundle exec sidekiqctl quiet #{shared_path}/pids/sidekiq.pid"
  end
end
