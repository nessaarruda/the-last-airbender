class Member
  def initialize
    @count = @count
    @name = @name
    @photo = @photo
    @allies = @allies
    @enemies = @enemies
    @affiliations = @affiliations
  end

  def member_details
    @members.each do |member|
      @count = @members.size
      @name = member['name']
      @photo = member['photoUrl']
      @allies = member['allies']
      @enemies = member['enemies']
      @affiliations = member['affiliation']
  end

end
