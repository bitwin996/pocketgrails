# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {name:'John',email:'john@gmail.com',password:'aaaaaa',password_confirmation:'aaaaaa'},
  {name:'Tom',email:'tom@gmail.com',password:'aaaaaa',password_confirmation:'aaaaaa'}
]

users.each { |user| User.create user }

john = User.find_by_email 'john@gmail.com'
tom  = User.find_by_email 'tom@gmail.com'
john.follow! tom
