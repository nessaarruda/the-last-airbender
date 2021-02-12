class MembersService
  class << self

    def call_for_member(nation)
      response = conn.get("characters?affiliation=#{nation}")
      parse(response)
    end

  private

    def conn
      Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/')
    end

    def parse(response)
      JSON.parse(response.body, symbolize_keys: true)
    end
  end
end
