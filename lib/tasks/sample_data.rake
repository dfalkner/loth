namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(name:     "Dane Falkner",
                       email:    "dfalkner@surgeworks.com",
                       password: "password",
                       password_confirmation: "password"
                       )                              
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "person-#{n+1}@divineoffice.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end