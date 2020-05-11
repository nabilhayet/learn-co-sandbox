class Cli
  def run
    Scrapper.get_movie
  end
end
  #   input = ""
  #   while input!='exit'
  #
  #   puts "Welcome to our movie wolrd"
  #   puts "To find the list of all the movies, enter 'list movies'"
  #   puts "To list all of the director in your movie world, enter 'list director'."
  #   puts "To list all of the genres in your library, enter 'list genres'."
  #   puts "To quit, type 'exit'"
  #
  #   case input
  #          when "list movies"
  #            list_movies
  #          when "list director"
  #           list_director
  #          when "list genres"
  #            list_genres
  #          end
  #       input = gets.strip.downcase
  #     end
  #   end
  #
  # def list_movies
  #   Movies.all.select{|movie| movie.name}
  # end
  #
  # def list_director
  #   Director.all.select{|direct| direct.name}
  # end
  #
  # def list_producer
  #   Producer.all.select{|produce| produce.name}
  # end
  
  # def list_writer
  #   Writer.all.select{|writer| writer.name}
  # end
