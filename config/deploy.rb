# 如果你对ssh-add有兴趣，你可以去读这一篇。https://ihower.tw/blog/archives/7837
`ssh-add`
# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

# 项目名称
set :application, "deployment"
# git仓库地址
set :repo_url, "git@github.com:SundarZhou/deployment.git"
# 需要部署到服务器的位置
set :deploy_to, "/home/deploy/deployment"
set :branch, ENV['BRANCH'] if ENV['BRANCH']
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
