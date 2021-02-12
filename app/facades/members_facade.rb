class MembersFacade
  class << self

    def all_members
      MembersService.find_members
    end

  end
end
