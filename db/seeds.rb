require 'random_data'
#create Users

5.times do
  User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

#create posts

15.times do
  Topic.create!(
   name: RandomData.random_sentence,
   description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

15.times do
  SponsoredPost.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
sponsored_posts = SponsoredPost.all
#create comments
100.times do
  Comment.create!(
    user: users.sample,
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

admin = User.create!(
  name: 'Admin User'
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
 )

 member = User.create!(
   name: 'Member User',
   email: 'member@example.com',
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
