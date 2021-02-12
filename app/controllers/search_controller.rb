class SearchController < ApplicationController

  def index
    all_pages.each do |member|
      number_of_members = all_pages.size
      name = member['name']
      photo = member['photoUrl']
      allies = member['allies']
      enemies = member['enemies']
      affiliations = member['affiliation']
    end
  end

  def all_pages
    counter = 5
    page = 1
    @all_members = []
    while counter != 0 do
    conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    response = conn.get("characters?affiliation=Fire+Nation?page=#{page}")
    body = JSON.parse(response.body, symbolize_keys: true)
    @all_members << body
    counter -= 1
    page += 1
    require "pry"; binding.pry
    end
    @all_members
  end
end
