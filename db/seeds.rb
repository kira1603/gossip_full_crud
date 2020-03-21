=begin
10.times do
 Gossip.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, user_id:rand(1..10))
end
=end

10.times do
 User.create(name: Faker::Name.first_name)
end

10.times do
 Comment.create(content: Faker::Lorem.paragraph, user_id:rand(1..10), gossip_id:rand(1..10))
end
