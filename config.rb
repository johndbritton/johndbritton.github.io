activate :blog do |blog|
  blog.sources = "posts/:year/:year-:month-:day-:title"
  blog.permalink = ":year/:month/:day/:title"
  blog.taglink = "tag/:tag.html"
  blog.tag_template = 'tag.html'
end

ready do
  # Category pages
  sitemap.resources.group_by {|p| p.data["category"] }.each do |category, posts|
    unless category.nil?
      proxy "/category/#{category}.html", "category.html", 
        :locals => { :category => category, :posts => posts }, :ignore => true
    end
  end

  # Redirect from old urls
  sitemap.resources.each do |post|
    if post.data.redirects
      post.data.redirects.each do |redirect|
        proxy "#{redirect}.html", "redirect.html", 
          :locals => { :redirect_url => post.url }, :ignore => true
      end
    end
  end

  # Redirect tag urls with spaces
  blog.tags.keys.each do |tag|
    if tag.match(" ")
      proxy "tag/#{tag}.html", "redirect.html", 
        :locals => { :redirect_url => (tag_path tag) }, :ignore => true
    end
  end
end

activate :directory_indexes

###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end