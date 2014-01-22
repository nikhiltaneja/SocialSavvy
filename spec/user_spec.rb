require 'spec_helper'

describe SocialSavvy::User do
  it 'should retrieve Klout score for user' do
    VCR.use_cassette('retrieve_klout') do
      username = 'jsl_demo_07'
      score = SocialSavvy::User.new(username).klout
      score.should_not eq(nil)
    end
  end

  it 'should set a score' do
    VCR.use_cassette('set_klout') do
      username = 'jsl_demo_07'
      SocialSavvy::User.new(username).klout=10
      score = SocialSavvy::User.new(username).klout
      score.should eq(10)
    end
  end
end
