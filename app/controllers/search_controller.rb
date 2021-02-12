class SearchController < ApplicationController

  def index
    @members = MembersFacade.all_members
    # conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    # response = conn.get('characters?affiliation=Fire+Nation')
    # @members = JSON.parse(response.body, symbolize_keys: true)
    # @members.each do |member|
    #   @count = @members.size
    #   @name = member['name']
    #   @photo = member['photoUrl']
    #   @allies = member['allies']
    #   @enemies = member['enemies']
    #   @affiliations = member['affiliation']
    # end
  end
end
