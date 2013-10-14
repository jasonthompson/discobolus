require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << 'lib/discobolus'
  t.test_files = FileList['spec/lib/discobolus/*_spec.rb']
  t.verbose = true
end

task :default => :test
