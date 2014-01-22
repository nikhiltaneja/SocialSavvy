require 'spec_helper'

describe SocialSavvy::User do
  it 'should retrieve Klout score for user' do
    username = 'jsl_demo_07'
    score = SocialSavvy::User.new(username).klout
    score.should_not eq(nil)
  end

  it 'should set a score' do
    username = 'jsl_demo_07'
    SocialSavvy::User.new(username).klout=10
    score = SocialSavvy::User.new(username).klout
    score.should eq(10)
  end
end
