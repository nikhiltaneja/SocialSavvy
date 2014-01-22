require 'spec_helper'

  describe SocialSavvy::Klout do
    it 'should return score' do
      VCR.use_cassette('klout') do
        username = 'jsl_demo_07'
        score = SocialSavvy::Klout.get_score_for(username)
        score.should_not eq(nil)
        expect(score).to be >= 0
      end
    end
  end
