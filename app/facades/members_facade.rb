class MembersFacade
  class << self

    def get_member(nation)
      nation = MembersService.call_for_member(nation)
      nation.each do |n|
        Member.new(n)
      end
    end
  end
end
