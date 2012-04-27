class Jekyll::BlogGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def copy_config_file
        copy_file 'config/jekyll/_config.yml.tt', 'config/jekyll/_config.yml'
        copy_file 'config/jekyll/atom.xml.tt', 'config/jekyll/atom.xml'
        copy_file 'config/jekyll/index.html.tt', 'config/jekyll/index.html'
        copy_file 'config/jekyll/_layouts/default.html.tt', 'config/jekyll/_layouts/default.html'
        copy_file 'config/jekyll/_layouts/page.html.tt', 'config/jekyll/_layouts/page.html'
        copy_file 'config/jekyll/_layouts/post.html.tt', 'config/jekyll/_layouts/post.html'
        copy_file 'config/jekyll/_posts/2012-04-25-a-test-post.markdown.tt', 'config/jekyll/_posts/2012-04-25-a-test-post.markdown'
        copy_file 'config/jekyll/css/screen.css.tt', 'config/jekyll/css/screen.css'
        copy_file 'config/jekyll/css/syntax.css.tt', 'config/jekyll/css/syntax.css'
    end

    def create_blog source = 'config/jekyll', destination = 'public/blog'
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
