trap("SIGINT") { exit! }

task :default do
  exec 'rake -T'
end

def puts_and_exec command
  puts command
  exec command
end

desc 'Build site for production'
task :build do
  puts_and_exec 'jekyll build --config _config.yml,_config.production.yml --trace'
end

desc 'Preview and watch changes on local machine (development)'
task :preview do
  puts_and_exec 'jekyll serve --config _config.yml --watch --trace'
end
