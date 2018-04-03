# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'austin@nash.com', :fname => 'austin', :lname => 'nash'
u2 = User.create :email => 'austin1@nash.com', :fname => 'austin1', :lname => 'nash1'

Traveled.destroy_all
t1 = Traveled.create :country1 => 'San Fransico', :country2 => 'Bali', :country3 => 'Hong Kong'
t2 = Traveled.create :country1 => 'San Fransico', :country2 => 'San Diego', :country3 => 'Hong Kong'

Activity.destroy_all
a1 = Activity.create :activity1 => 'number1', :activity2 => 'number2', :activity3 => 'number3'
a1 = Activity.create :activity1 => 'number4', :activity2 => 'number5', :activity3 => 'number6'
