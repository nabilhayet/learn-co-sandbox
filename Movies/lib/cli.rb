require_relative "../lib/movies.rb"
require_relative "../lib/scrapper.rb"
require 'pry'
require 'nokogiri'

class Cli
  def run
    puts "Hello to our Movie World"
  end
end 
#   def call
#     input = ""
#     while input!='exit'
#       puts "Welcome to our movie wolrd"
#       puts "To find the list of all the movies, enter 'list movies'"
#       puts "To list all of the director in your movie world, enter 'list director'."
#       puts "To list all of the genres in your library, enter 'list genres'."
#       puts "To quit, type 'exit'"
#       puts "What would you like to do?"
#
# case input
#       when "list movies"
#         list_movies
#       when "list director"
#         list_director
#       when "list genres"
#         list_genres
#       end
#       input = gets.strip
#   end
# end
