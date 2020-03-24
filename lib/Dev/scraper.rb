class Dev::Scraper

    def self.scrape_site_headlines(site)
        doc = Nokogiri::HTML(open(site.site_url))

       doc = html.search("section.cover.cover--grid4").each do |latest|
            new_article = Dev::Article.new
            new_article.title = latest.search("h2.cover-title").text 
            new_article.url = latest.search("h2.cover-title").attr("href")
            Dev::Article.add_post(new_post)
        end
    end 
end