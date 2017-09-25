@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User created"

@admin = AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 Admin created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post + 1} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"