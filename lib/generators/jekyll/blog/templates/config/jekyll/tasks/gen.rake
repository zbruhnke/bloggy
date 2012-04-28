desc 'Run Jekyll in config/jekyll directory without having to cd there'''
task :generate do
  Dir.chdir("config/jekyll") do
    system('jekyll')
  end
end