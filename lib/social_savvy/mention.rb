module SocialSavvy
  class Mention
    attr_reader :mention

    def initialize(mention)
      @mention = Hashie::Mash.new(mention)
    end

    def method_missing(method, *args)
      mention.send(method, *args)
    end
  end
end
