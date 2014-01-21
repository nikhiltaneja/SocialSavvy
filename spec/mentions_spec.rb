require 'spec_helper'

describe SocialSavvy::Mention do 
  it 'fetches mentions' do
    twitter_handle = 'jsl_demo_07'
    user = SocialSavvy::User.new(twitter_handle)
    mentions = user.mentions
    mentions.count.should == 10
  end

  it 'returns mention with klout score' do
    twitter_handle = 'jsl_demo_07'
    user = SocialSavvy::User.new(twitter_handle)
    mentions = user.mentions
    mentions.first.klout.should >= 50.0
  end
end
