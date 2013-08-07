desc 'Run Jekyll in config/jekyll directory without having to cd there'
task :generate do
  Dir.chdir("config/jekyll") do
    system('bundle exec jekyll build')
  end
end
desc 'Run Jekyll in config/jekyll directory with --watch'
task :autogenerate do
  Dir.chdir("config/jekyll") do
    system('bundle exec jekyll build --watch')
  end
end
