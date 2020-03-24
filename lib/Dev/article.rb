class Dev::Article
     
    attr_accessor :site_name, :site_url, :articles

    SITES = {  "TWN" => "https://thenextweb.com/section/tech/"

    }

    @@all = []

    def initialize(site_name,site_url)
        @site_name = site_name
        @site_url = site_url
        @articles = []
        @@all << self
    end

    def self.all
        @@all
    end

    def self.create_from_hash
        SITES.each do |site, url|
            self.new(site, url)
        end
    end

        def add_article(article)
            self.articles << article
        end
    end