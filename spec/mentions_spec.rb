require 'spec_helper'

describe SmartyPants::Mention do 
  it 'fetches mentions' do
    twitter_handle = 'jsl_demo_07'
    user = SmartyPants::User.new(twitter_handle)
    mentions = user.mentions
    mentions.count.should == 10
  end

  it 'returns mention with klout score' do
    twitter_handle = 'jsl_demo_07'
    user = SmartyPants::User.new(twitter_handle)
    mentions = user.mentions
    mentions.first.klout.should == 69.0
  end
end
