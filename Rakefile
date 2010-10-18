require 'bundler'
Bundler::GemHelper.install_tasks

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

namespace :cucumber do
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:wip, 'Run features that are being worked on') do |t|
    t.cucumber_opts = "--tags @wip"
  end
  Cucumber::Rake::Task.new(:ok, 'Run features that should be working') do |t|
    t.cucumber_opts = "--tags ~@wip"
  end
  task :all => [:ok, :wip]
end

desc 'Alias for cucumber:ok'
task :cucumber => 'cucumber:ok'

desc "Default specs and cucumber features"
task :default => [:spec, :cucumber]


desc "Download the required virtualbox myyard.box file for cucumber tests"
task :download_box do
  require "thor"
  puts "#{Thor::Shell::Color::YELLOW}Downloading a large virtualbox image...#{Thor::Shell::Color::CLEAR}"
  exec "curl http://files.vagrantup.com/lucid32.box > features/fixtures/myyard.box.tmp"
  require "fileutils"
  FileUtils.mv("features/fixtures/myyard.box.tmp", "features/fixtures/myyard.box")
end