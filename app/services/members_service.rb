class MembersService
  class << self

    def conn
      conn = Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    end

    def find_members
      response = conn.get('characters?affiliation=Fire+Nation')
      @members = JSON.parse(response.body, symbolize_keys: true)
    end
  end
end
