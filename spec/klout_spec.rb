require 'spec_helper'

describe SmartyPants::Klout do
  it 'should return score' do
    username = 'jsl_demo_07'
    score = SmartyPants::Klout.get_score_for(username)
    score.should_not eq(nil)
  end
end
