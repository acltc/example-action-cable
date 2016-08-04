names = ['Test', 'Bob', 'Jane', 'Alice']
names.each do |name|
  user = User.create(name: name, email: "#{name}@email.com".downcase, password: "password")
  3.times do
    Message.create(body: Faker::Lorem.paragraph, user_id: user.id)
  end
end
