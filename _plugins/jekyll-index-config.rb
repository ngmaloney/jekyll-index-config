require 'jekyll'

module IndexConfig
  class Generator < Jekyll::Generator
    def generate(site)
      if site.config["index"]
        index_page = site.pages.select{ |p| p.name == site.config["index"] }.first
        if index_page
          index_page.dir = ""
          index_page.basename = "index"
        else
          Jekyll.logger.error "Specified index page does not exist."
        end
      end
    end
  end
end
