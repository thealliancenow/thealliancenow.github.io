###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :directory_indexes
activate :relative_assets
set :relative_links, true
set :markdown_engine, :kramdown

# Blog congfiguration
activate :blog do |blog|
  blog.name         = "actions"
  blog.prefix       = "actions"
  blog.sources      = ":year-:month-:day-:title.html"
  blog.permalink    = ":year-:month-:day-:title.html"
  blog.layout       = "action_layout"
  blog.tag_template = "actions/tag.html"
  blog.paginate     = true
  blog.per_page     = 12
end
activate :blog do |blog|
  blog.name         = "news"
  blog.prefix       = "news"
  blog.sources      = ":year-:month-:day-:title.html"
  blog.permalink    = ":year-:month-:day-:title.html"
  blog.paginate     = true
  blog.per_page     = 10
  # TODO: layout for news pages
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch   = 'gh-pages'
end
