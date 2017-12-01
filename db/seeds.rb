# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating some users..."
user = User.create! :name => 'pablo', :state => 'Junin', :job => 'Teacher', :age => 29, :email => 'pablo@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'roberto', :state => 'Chaco', :job => 'Developer', :age => 42, :email => 'roberto@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'ana', :state => 'Junin', :job => 'Teacher', :age => 29, :email => 'ana@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'diego', :state => 'Pergamino', :job => 'Ingeniero', :age => 63, :email => 'diego@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'carlos', :state => 'Junin', :job => 'Teacher', :age => 44, :email => 'carlos@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'ingnacio', :state => 'Mar del Plata', :job => 'Teacher', :age => 59, :email => 'ignacio@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'marcelo', :state => 'San Luis', :job => 'Abogado', :age => 29, :email => 'marcelo@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'raquel', :state => 'La Rioja', :job => 'President', :age => 79, :email => 'raquel@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'ramon', :state => 'Junin', :job => 'Teacher', :age => 19, :email => 'ramon@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'angel', :state => 'Catamarca', :job => 'Empresario', :age => 10, :email => 'angel@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'julian', :state => 'Junin', :job => 'Teacher', :age => 29, :email => 'julian@gmail.com', :password => '123456', :password_confirmation => '123456'
user = User.create! :name => 'jesus', :state => 'San José', :job => 'Coach', :age => 27, :email => 'jesus@gmail.com', :password => '123456', :password_confirmation => '123456'
