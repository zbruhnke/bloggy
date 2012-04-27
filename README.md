# Bloggy

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
    
    $ rails g jekyll:blog blog

you will find the folders you are used to for creating jekyll blog posts inside of the config/jekyll directory. There you can add add the same commands you are used to provided at the <a href="https://github.com/mojombo/jekyll/wiki/Configuration">Jekyll configuration page</a>, so now just configure to your liking. (edit the default.html inside of _layouts for your main page and the post.html and page.html files for the corresponding results).

I have provided a rake task to name and open your file in textmate as default but feel free to change it to use the editor of your choice. To use it just run

    $ rake np post-title

Your posts will be served from the public/blog directory inside of your rails application. After you write a new blog post simply cd into the config/jekyll directory and then run 

    $ jekyll

The new static files will be generated and ready to be re-deployed and served as static assets by your server!

**I know this is not ideal and will probably make a rake task etc. for creating and generating the posts in a later version but this is an early push and should take care of most of the dirty work**

**Make sure to note that if you run the generator more than once it will attempt to overwrite any changes you have made in the config/jekyll directory. Do not run the generator again**

Some changes are sure to come as I explore and use this on my own, but for now I feel it is a good start and a step in the right direction for quickly and easily adding a blog to your application while keeping costs low. If you have questions or would just like to get in touch you can do so by <a href="http://zachbruhnke.com/contact">contacting me here</a>. Thanks for trying out Bloggy and please feel free to fork and contribute!


This gem was originally crafted with love by <a href="http://zachbruhnke.com/">Zach Bruhnke</a> and was created to show customers on Engine Yard how they could add a simple (and SEO friendly) blog to their existing rails application in no time and save extra time and configuration steps for custom setups that save money.

Bloggy was built on top of the Jekyll framework written by <a href="http://tom.preston-werner.com/">Tom Preston-Warner</a> and uses the same config elements you're used to if you already use jekyll for blogging. The default design I included also came from Tom(clearly I am not much of a designer). Thankfully he provided them under the MIT license for us all to use. Hope you enjoy Bloggy and find it useful for your endeavors.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
