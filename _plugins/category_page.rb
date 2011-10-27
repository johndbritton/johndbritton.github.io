module Jekyll
  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category_page.html')
      self.data['category'] = category
    end
  end
  class CategoryGenerator < Generator
    safe true
    def generate(site)
      if site.layouts.key? 'category_page'
        dir = site.config['category_dir'] || 'category'
        site.categories.keys.each do |category|
          write_category_page(site, File.join(dir, category), category)
        end
      end
    end
    def write_category_page(site, dir, category)
      page = CategoryPage.new(site, site.source, dir, category)
      page.render(site.layouts, site.site_payload)
      page.write(site.dest)
      site.pages << page
    end
  end
end