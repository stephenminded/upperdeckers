FactoryGirl.define do
  factory :player do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone "555-555-5555"
  end

  factory :team do
    name { Faker::Team.name }
  end

  factory :roster do
    team
    season "Summer 2015"
  end

  factory :roster_player do
    player
    roster
  end
end
