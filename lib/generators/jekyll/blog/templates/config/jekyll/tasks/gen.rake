desc 'Run Jekyll in config/jekyll directory without having to cd there'''
task :generate do
  directory= 'config/jekyll'
  system('jekyll')
end