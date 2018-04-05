# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'austin@nash.com', :fname => 'austin', :lname => 'nash', :password => 'chicken'
u2 = User.create :email => 'austin1@nash.com', :fname => 'austin1', :lname => 'nash1', :password => 'chicken'

City.destroy_all
c1 = City.create :name => 'sydney'
c2 = City.create :name => 'San Diego'

Activity.destroy_all
a1 = Activity.create :event => 'beach'
a2 = Activity.create :event => 'surf'

c1.activities << a1
c2.activities << a2

u1.cities << c1 << c2
u2.cities << c1 << c2
