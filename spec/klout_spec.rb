require 'spec_helper'

describe SocialSavvy::Klout do
  it 'should return score' do
    username = 'jsl_demo_07'
    score = SocialSavvy::Klout.get_score_for(username)
    score.should_not eq(nil)
    score.class.should eq(Fixnum)
  end
end
