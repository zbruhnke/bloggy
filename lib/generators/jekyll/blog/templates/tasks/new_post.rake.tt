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

    begin
      config = {'editor' => 'mate'}
      if File.exist?("#{Dir.home}/.bloggyrc")
        config.merge!(YAML.load_file("#{Dir.home}/.bloggyrc"))
      end
    rescue TypeError
      puts "[WARN] Failed to parse editor from .bloggyrc"
    end
    
    begin
    `#{config['editor']} #{path}`
    rescue Exception
      puts "[WARN] Could not find editor #{config['editor']} - please edit #{path} manually"
    end

  end

  exit 1
end
