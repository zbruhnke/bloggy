desc 'Run Jekyll in config/jekyll directory without having to cd there'''
task :dev do
  system('jekyll')
end