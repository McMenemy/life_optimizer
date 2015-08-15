User.create!(name:  "Example Admin",
             email: "admin@ananda.com",
             password:              "bandersnitch",
             password_confirmation: "bandersnitch",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Example User",
             email: "example@ananda.com",
             password:              "bandersnitch",
             password_confirmation: "bandersnitch",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@ananda.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

20.times do |n|
    Habit.create(title: "testing",
             classification: "positive",
             completed: 'yes',
             quantifier: 10,
             quantifier_unit: 'pages',
             user_id: 1,
             created_at: Time.zone.now,
             updated_at: Time.zone.now + n * 86400)
end