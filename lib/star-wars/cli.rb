class Cli

  def call
    puts "Welcome to Star Wars CLIpedia"
    accepted_input = ["1", "quit", "q"]
    input = nil
    until accepted_input.include?(input)
      first_steps
      input = gets.chomp.downcase
    end

    case
    when input == "1"
      puts get_director_names
    when input == "quit" || input == "q"
      puts "May The Forse Be With You! Shutting Down..."
    end
  end

  def first_steps
    puts "Choose from below options or type (q)uit"
    puts "1. List names of all Directors"
  end

  def get_director_names
    results = Data.get_directors_and_titles
    Director.create_from_collection(results)
    Director.all.map do |director|
      director.name
    end.uniq
  end

end