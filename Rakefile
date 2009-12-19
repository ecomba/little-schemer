require 'rake'

task :default => :test

desc 'Run the tests for the project'
task :test do
  sh %Q{mit-scheme --batch-mode --eval "(set! load/suppress-loading-message? #t)" --load test/all-tests.scm --eval "(%exit (run-registered-tests))"}
end
