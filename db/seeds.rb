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

puts "#{Post.count}"
new =   Post.find_or_create_by(
        title: "Many Title",
        body: "Voluminous Body"
        )
dos = Post.find_or_create_by(
        title: "So Titles, WOW!",
        body: "Much Body"
        )

tres = Post.find_or_create_by(
        title: "Please call me by my title!",
        body: "This be the body"
        )
puts "#{Post.count}"
puts "#{Comment.count}"
Comment.find_or_create_by(
    post: new,
    body: "Unique Body Things!"
    )

Comment.find_or_create_by(
    post: dos,
    body: "Sup!"
    )

Comment.find_or_create_by(
    post: tres,
    body: "This be the body"
    )
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
