class Data

  def self.get_data(url)
    result = HTTParty.get(url)
    parsed_result = result.parsed_response
  end

  def self.get_directors_and_titles
    films = get_data("http://swapi.co/api/films/")
    results = []
    films["results"].each do |film|
      results << {
        :name => film["director"],
        :film_title => film["title"]
      }
    end
    results
  end

end