require 'rubygems'
require 'optparse'
require 'yaml'

desc "create new post with textmate"
task :np do
  OptionParser.new.parse!
  ARGV.shift
  title = ARGV.join(' ')

  path = "config/jekyll/_posts/#{Date.today}-#{title.downcase.gsub(/[^[:alnum:]]+/, '-')}.markdown"
  
  if File.exist?(path)
  	puts "[WARN] File exists - skipping create"
  else
    File.open(path, "w") do |file|
      file.puts YAML.dump({'layout' => 'post', 'published' => false, 'title' => title})
      file.puts "---"
    end
  end
  `mate #{path}`

  exit 1
end