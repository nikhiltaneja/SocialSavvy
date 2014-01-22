require 'spec_helper'

describe SocialSavvy::Mention do 
  it 'fetches mentions' do
    VCR.use_cassette('mention_fetch') do
      twitter_handle = 'jsl_demo_07'
      user = SocialSavvy::User.new(twitter_handle)
      mentions = user.mentions
      mentions.count.should == 10
    end
  end

  it 'returns mention with klout score' do
    VCR.use_cassette('return_mention') do
      twitter_handle = 'jsl_demo_07'
      user = SocialSavvy::User.new(twitter_handle)
      mentions = user.mentions
      mentions.first.klout.should >= 0
    end
  end
end
