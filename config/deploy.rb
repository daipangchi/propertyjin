require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rvm'
require 'mina/puma'

set :rails_env, 'production'
set :domain, '188.226.216.228'
set :port, 22
set :user, 'apps'

set :deploy_to, "/home/#{user}/siemenscollection/#{rails_env}"
set :app_path, "#{deploy_to}/#{current_path}"
set :repository, 'git@github.com:AvaelKross/siemenscollection.git'
set :branch, 'master'
set :shared_paths, ['config/database.yml', 'config/secrets.yml', 'tmp', 'public/system']
set :keep_releases, 10
set :rvm_path, '/usr/local/rvm/scripts/rvm'

task :environment do
  invoke 'rvm:use[ruby-2.1.1@rails411]'
end

#delay. Setup task
# ==============================================================================
task :setup do
  queue! %{
mkdir -p "#{deploy_to}/shared/tmp/pids"
}
  queue! %{
mkdir -p "#{deploy_to}/shared/tmp/sockets"
}
  queue! %{
mkdir -p "#{deploy_to}/shared/config"
}
end

# Deploy task
# ==============================================================================
desc "deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke 'git:clone'
    invoke 'bundle:install'
    invoke 'deploy:link_shared_paths'
    invoke 'rails:db_migrate'
    invoke 'rails:assets_precompile'

    to :launch do
      invoke :'puma:restart'
    end
  end
end