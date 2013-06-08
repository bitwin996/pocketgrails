require 'spec_helper'

describe Relationship do
  let(:follower) { FactoryGirl.create :user }
  let(:followed) { FactoryGirl.create :user }

  it "a user can follow the other user" do
    follower.follow! followed
    follower.followed_users.should be_include followed
    followed.followers.should be_include follower
  end

  describe "existed relationship" do
    let(:relationship) { follower.relationships.build followed_id: followed.id }
    subject { relationship }
    it { should be_valid }
  end
end
