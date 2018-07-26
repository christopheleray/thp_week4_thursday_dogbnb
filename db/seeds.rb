require 'faker'

10.times do
  city = City.create(city: Faker::Address.city)
end

10.times do
  dog = Dog.create(dog_name: Faker::Name.name, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
  dogsitter = Dogsitter.create(name: Faker::Name.name, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
  stroll = Stroll.create(stroll_name: Faker::Name.name, dog_id: rand((Dog.first.id)..(Dog.last.id)), dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)))
end 