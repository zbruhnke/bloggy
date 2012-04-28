desc 'Run Jekyll in config/jekyll directory without having to cd there'''
task :gen do
  path = "config/jekyll"
  system('jekyll')
end