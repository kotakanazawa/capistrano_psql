# config valid for current version and patch releases of Capistrano
lock "~> 3.12.1"

set :application, "capistrano_psql"
set :repo_url, "git@github.com:kotakanazawa/capistrano_psql.git"
set :user, "deploy"

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"

set :bundle_jobs, 2

append :linked_files, "config/master.key"
append :linked_dirs, '.bundle', "log", "tmp/pids", "tmp/cache", "tmp/sockets"
