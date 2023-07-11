require 'bundler/setup'
require 'rake/testtask'

Bundler.require(:default, :test)

Rake::TestTask.new do |t|
    t.libs << "test"
end

desc "Install dependencies"
task :dependencies do
    sh "bundle install"
end

desc "Run tests"
task :default =>  [:dependencies, :test]