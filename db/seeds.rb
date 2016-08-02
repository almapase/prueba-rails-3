# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Genre.destroy_all
Song.destroy_all

20.times do
  genre = Genre.new(name: Faker::Book.genre)
  5.times do
    genre.songs.build(name: Faker::Book.title, duration: 5 )
  end
  genre.save!
end

10.times do
  user = User.new(name: Faker::Name.name, email: Faker::Internet.email, password: 12345678)
  5.times do |i|
    user.user_songs.build(position: i+1, song: Song.all.order("RANDOM()").first )
  end
  user.save!
end
