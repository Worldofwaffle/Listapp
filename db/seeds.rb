require 'faker'

5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

lists = List.all
lists.each do |list|
 25.times do
   Todo.create!(
     list: list,
     description: Faker::Lorem.sentence
   )
 end
end
todos = Todo.all

admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld'
  )
 admin.skip_confirmation!
 admin.save!
 
