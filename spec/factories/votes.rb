FactoryGirl.define do
  factory :vote do
    value 1
    post
    user
  end
end

# let(:my_vote) { Vote.create!(value: 1) }
# let(:vote) { create(:vote, post: post, user: user) }