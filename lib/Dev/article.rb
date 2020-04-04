class Dev::Article 

    attr_accessor :name, :description 

    # def initialize 
    #     @name = name 
    #     @description = description
    # end

    # def self.data 
    #     self.scrape_data
    # end

    # def self.scrape_data
    #     flowers = []
         
    #     flowers << self.scrape_flowers
    # end

    def self.scrape_flowers
        doc = Nokogiri::HTML(open("https://www.1800flowers.com/blog/flower-facts/flower-types"))
        doc.search("div.post-entry").each do |doc|
            flower = Dev::Article.new
        flower.name = doc.css("h2").text.gsub("More Flower Types:", "")
        flower.description = doc.css("p").text
        flower
        end
    end
end