class Jekyll::BlogGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)
    argument :name, :type => :string, :default => "blog"

    def copy_config_file
        template  'config/jekyll/_config.yml.tt', 'config/jekyll/_config.yml'
        copy_file 'config/jekyll/atom.xml.tt', 'config/jekyll/atom.xml'
        template  'config/jekyll/index.html.tt', 'config/jekyll/index.html'
        template  'config/jekyll/_layouts/default.html.tt', 'config/jekyll/_layouts/default.html'
        template  'config/jekyll/_layouts/post.html.tt', 'config/jekyll/_layouts/post.html'
        copy_file 'config/jekyll/_layouts/page.html.tt', 'config/jekyll/_layouts/page.html'
        copy_file 'config/jekyll/_posts/2014-01-11-a-test-post.markdown.tt', 'config/jekyll/_posts/2014-01-11-a-test-post.markdown'
        copy_file 'config/jekyll/css/screen.css.tt', 'config/jekyll/css/screen.css'
        copy_file 'config/jekyll/css/syntax.css.tt', 'config/jekyll/css/syntax.css'
        copy_file 'tasks/new_post.rake.tt', 'lib/tasks/new_post.rake'
        copy_file 'tasks/gen.rake.tt', 'lib/tasks/gen.rake'
    end

    def create_blog source = 'config/jekyll', destination = File.join('public',"#{name}")
        options = {
            'source' => source,
            'destination' => destination
        }
        source_dir = 'config/jekyll'
        options = Jekyll.configuration(options)
        site = Jekyll::Site.new(options)

        begin
          site.process
        rescue Jekyll::FatalException => e
          puts
          puts "ERROR: YOUR SITE COULD NOT BE BUILT:"
          puts "------------------------------------"
          puts e.message
          exit(1)
        end
        puts "Successfully generated site: #{source} -> #{destination}"
    end
end
