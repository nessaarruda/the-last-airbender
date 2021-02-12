class SearchController < ApplicationController

  def index
    conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    response1 = conn.get('characters?affiliation=Fire+Nation&page=1')
    response2 = conn.get('characters?affiliation=Fire+Nation&page=2')
    response3 = conn.get('characters?affiliation=Fire+Nation&page=3')
    response4 = conn.get('characters?affiliation=Fire+Nation&page=4')
    response5 = conn.get('characters?affiliation=Fire+Nation&page=5')
    final_response = 

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
end
