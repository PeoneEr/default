# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'default'
set :repo_url, 'git@github.com:PeoneEr/default.git'

set :deploy_to, '/home/deploy/default'

set :user, 'deploy'

set :linked_files, %w{config/database.yml config/initializers/secret_token.rb}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
  after "deploy", "deploy:migrate"

end
