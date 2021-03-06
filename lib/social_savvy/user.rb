module SocialSavvy
  class User
    attr_reader :username
    
    def initialize(username)
      @username = username
    end

    def mentions
      response = Faraday.get("http://localhost:3000/api/v1/mentions.json?user=#{username}")
      mentions = JSON.parse(response.body)
      mentions.collect do |mention|
        Mention.new(mention)
      end
    end

    def klout
      response = Faraday.get("http://localhost:3000/api/v1/klout.json?user=#{username}")
      response.body.to_i
    end

    def klout=(number)
      Faraday.post("http://localhost:3000/api/v1/update_klout?user=#{username}&score=#{number}")
    end
  end
end

# SocialSavvy::Config.host = "http://foo.com"
# Content-Type: 
