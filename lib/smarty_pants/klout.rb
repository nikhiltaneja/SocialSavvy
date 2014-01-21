module SmartyPants
  class Klout
    def self.get_score_for(username)
      response = Faraday.get("http://localhost:3000/api/v1/klout.json?user=#{username}")
      JSON.parse(response.body)['score'].round
    end
  end
end
