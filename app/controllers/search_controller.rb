class SearchController < ApplicationController

  def index
    conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    response = conn.get('characters?affiliation=Fire+Nation')
    @members = JSON.parse(response.body, symbolize_keys: true)
    @members.each do |member|
      # number_of_members = probably limitation issue that is returing only 20
      name = member['name']
      photo = member['photoUrl']
      allies = member['allies']
      enemies = member['enemies']
      affiliations = member['affiliation']
      require "pry"; binding.pry
    end
  end

  def all_pages
    counter = 5
    page = 1
    final_result = []
    while counter != 0 do
    conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    response = conn.get("characters?affiliation=Fire+Nation?page=#{page}")
    final_result << response
    counter -= 1
    page += 1
    end
    require "pry"; binding.pry
    @members = JSON.parse(response.body, symbolize_keys: true)
  end
end
