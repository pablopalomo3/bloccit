FactoryBot.define do
  factory :comment do
    body RandomData.random_paragraph
    post
    user
  end
end

# let(:my_comment) { Comment.create!(body: 'Comment Body', post: my_post, user: my_user) }