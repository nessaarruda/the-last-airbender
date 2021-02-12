class SearchController < ApplicationController

  def index
    nation = 'Fire Nation'# need to use params[:nation]
    @members = MembersFacade.get_member(nation)
    # @members = MembersFacade.all_members
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
