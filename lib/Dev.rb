require_relative './Dev/version'
require_relative "./Dev/article"
require_relative "./Dev/cli"
require_relative "./Dev/scraper"

require "nokogiri"
require "open-uri"
require "pry"

module Dev
  class Error < StandardError; end
  # Your code goes here...
end
