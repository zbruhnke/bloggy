# Bloggy

[![Dependency Status](https://gemnasium.com/erictheise/bloggy.png)](https://gemnasium.com/erictheise/bloggy)

Bloggy is a simple gem that helps you generate a jekyll blog within your rails application by using generator commands similar to the ones you are used to already.

## Installation

Add this line to your application's Gemfile:

    gem 'bloggy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bloggy

## Usage

All config elements you are used to in your jekyll blog are still present (and tucked away nicely in your rails app)

Once you run

    $ rails g jekyll:blog

you will find the file structure you are used to seeing for creating blog posts, editing default layout etc. inside of the config/jekyll directory. There you can add add the same commands you would from a normal jekyll installation (they are provided at the [Jekyll configuration page](http://jekyllrb.com/docs/configuration/)). So now just configure to your liking. (edit the default.html inside of _layouts for your main page and the post.html and page.html files for the corresponding results).

I have provided a rake task to name and open your new blog post for editing. To use it just run

    $ bundle exec rake np post-title

By default, your post will open in textmate, but you can override this by creating a .bloggyrc file in your home directory, containing the command line invocation of your editor.

    # mine for Rubymine, subl for Sublime Text, mate for TextMate, etc.
    editor: mine

Your posts will be served from the public/blog directory inside of your rails application. After you write a new blog post simply run

    $ bundle exec rake generate

And the new static files will be generated and ready to be re-deployed and served as static assets by your server! Be default, you can see your blog at /blog.

Some changes are sure to come as I explore and use this on my own, but for now I feel it is a good start and a step in the right direction for quickly and easily adding a blog to your application while keeping costs low. If you have questions or would just like to get in touch you can do so by [contacting me here](http://zachbruhnke.com/contact). Thanks for trying out Bloggy and please feel free to fork and contribute!


This gem was originally crafted with love by [Zach Bruhnke](http://zachbruhnke.com/) and was created to show customers on Engine Yard how they could add a simple (and SEO friendly) blog to their existing rails application in no time and save extra time and configuration steps for custom setups that save money.

Bloggy was built on top of the Jekyll framework written by [Tom Preston-Werner](http://tom.preston-werner.com/) and uses the same config elements you're used to if you already use jekyll for blogging. The default design I included also came from Tom (clearly I am not much of a designer). Thankfully he provided them under the MIT license for us all to use. Hope you enjoy Bloggy and find it useful for your endeavors.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
