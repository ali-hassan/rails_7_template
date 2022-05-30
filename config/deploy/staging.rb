role :app, %w{ubuntu@54.145.226.174}
role :web, %w{ubuntu@54.145.226.174}
role :db, %w{ubuntu@54.145.226.174}
set :puma_threads, [0, 16]
set :puma_workers, 1

set :deploy_to, '/home/ubuntu/projects/seamless_capital'
ask :branch, 'main'
server '54.145.226.174', user: 'ubuntu', roles: %w{web app}, my_property: :my_value
server '54.145.226.174',
       user: 'ubuntu',
       roles: %w{web app},
       ssh_options: {
           user: 'ubuntu', # overrides user setting above
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
