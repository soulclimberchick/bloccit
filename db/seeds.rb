require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(title: “Many Title“, body: “Voluminous Body”)
Post.find_or_create_by(title: “So Titles, WOW!“, body: “Much Body”)
Post.find_or_create_by(title: “Please call me by my title“, body: “This be the body”)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
