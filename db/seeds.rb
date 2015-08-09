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