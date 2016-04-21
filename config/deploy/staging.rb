set :ip, "192.168.1.39"
server "#{ip}", :web, :app, :db, primary: true
set :rails_env, 'staging'
set :branch, "master"