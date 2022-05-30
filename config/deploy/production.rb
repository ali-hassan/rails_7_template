role :app, %w{ubuntu@35.174.227.28}
role :web, %w{ubuntu@35.174.227.28}
role :db, %w{ubuntu@35.174.227.28}
set :puma_threads, [0, 32]
set :puma_workers, 4
set :deploy_to, '/home/ubuntu/projects/seamless_capital'
ask :branch, 'main'
server '35.174.227.28', user: 'ubuntu', roles: %w{web app}, my_property: :my_value
server '35.174.227.28',
       user: 'ubuntu',
       roles: %w{web app},
       ssh_options: {
           user: 'ubuntu', 
           keys: %w(~/.ssh/id_rsa),
           forward_agent: true,
           auth_methods: %w(publickey)
       }
namespace :paths do
  desc "Link paths of required files"
  task :link_paths do
    run "ln -sf #{shared_path}/uploads #{release_path}/public/uploads"
  end
end
