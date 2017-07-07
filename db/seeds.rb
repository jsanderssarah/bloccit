require 'random_data'

#create posts
15.times do
  Topic.create!(
   name: RandomData.random_sentence
   description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(
  title: "This is a Unique Title",
  body: "This is a test to see if this post shows up a single time."
)

post = Post.where(title: 'This is a Unique Title').first
Comment.create!(
  post: post,
  body:  "This is a comment on the unique post"
)


puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
