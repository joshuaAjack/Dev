class Dev::CLI
     
    def call 
        system("clear")
        list
        menu
    end

    def list
        puts "\nMOST POPULAR FLOWER TYPES."
        @flowers = Dev::Article.scrape_flowers
        @flowers.each_with_index do |flower, i|
          puts "#{i +1}. #{flower.name}"
        end
      end
    
      def menu
        input = nil
        while input != "exit"
          puts "Enter a number to see more information on the flower or type list or type exit."
          input = gets.strip.downcase
    
          if input.to_i > 0
            the_flower = @flowers[input.to_i-1]
            puts "#{the_flower.name} --- #{the_flower.description}}"
          elsif input == "list"
            list
          else
            puts "ERROR type list or type exit"
          end
        end
      end
    
      def goodbye
        system("clear")
        if "exit"
            exit
      puts "Thank you for your time!"
      end
     end
    end