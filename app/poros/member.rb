class Member

  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliations

  def initialize(data)
    @name = data['name'].capitalize
    @photo = data['photo']
    @allies = data['allies']
    @enemies = data['enemies']
    @affiliations = data['affiliations']
  end

  # def member_details
  #   @members.each do |member|
  #     @count = @members.size
  #     @name = member['name']
  #     @photo = member['photoUrl']
  #     @allies = member['allies']
  #     @enemies = member['enemies']
  #     @affiliations = member['affiliation']
  #     require "pry"; binding.pry
  # end

end
