require 'spec_helper'

  describe SocialSavvy::Mention do 
    it 'should connect to API' do
      VCR.use_cassette('connection') do
        response = Faraday.get('http://localhost:3000/api/v1/mentions.json')
        response.should_not eq(nil)
      end
    end
  end
