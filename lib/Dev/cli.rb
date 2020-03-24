class Dev::CLI
    
    def call 
        system("clear")
      puts "\nWelcome To Dev where you'll find daily tech news."
      puts 'Type "list" to see a list of the latest news or "exit" to leave'
      Dev::Article.create_from_hash
      menu 
    #   menu is where they will be able to type list and where I will then define how to choose each article
     end
     
     def menu
        input = nil
        while input != "exit"
        input = gets.strip

        case input
        when "list"
         puts ""
            list_sites
         puts ""
         input = gets.strip

         puts "\nSelect an article to read its content."
         
         if input.to_i.between?(1,4)
         scraper.scrape_site_headlines(sites[input.to_i-1])
         puts ""
         sites[input.to_i-1].post_list
          end
         when "exit"
            exit
        end
    end
end
    
    def list_sites
        Dev::Article.all.each_with_index do |site, index|
            puts "#{index+1}. #{site.site_name}"
        end
    end

    def sites 
        sites = Dev::Article.all
    end
end
  
