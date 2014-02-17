# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#library = Library.create(url: "http://obscure-beach-7777.herokuapp.com/adventures")

name = "Amy"

adventures = []
adventures << adv = Adventure.create!(:title => "#{name}'s Test Adventure",
	:author => name, :guid => SecureRandom.urlsafe_base64(10), :library_id => 1)
adv.pages.create!(:name => "start",
	:text => "This is a great text adventure which is beginning right now!  I can't wait to [[see the end|end]]")
adv.pages.create!(:name => "end",
	:text => "Wow that adventure was amazing!")

sexy_adventure = Adventure.create!(:title => "#{name}'s Sexy Adventure", :author => name, :guid => SecureRandom.urlsafe_base64(10), :library_id => 1)
sexy_adventure.pages.create(name: "start", text: "Follow Amy on her sexy romp through sexyville. I can't wait to [[see the end|end]]")
sexy_adventure.pages.create(name: "end", text: "And then we all got some ice cream.")
adventures << sexy_adventure

psychological_adventure = Adventure.create!(:title => "#{name}'s Psychological Adventure", :author => name, :guid => SecureRandom.urlsafe_base64(10), :library_id => 1)
psychological_adventure.pages.create(name: "start", text: "This journey explores the inner workings of Amy's psyche, including all of her anxieties and neurosis. Yikes! I can't wait to [[see the end|end]]")
psychological_adventure.pages.create(name: "end", text: "And then we all got some ice cream.")
adventures << psychological_adventure

drunken_adventure = Adventure.create!(:title => "#{name}'s Drunken Adventure", :author => name, :guid => SecureRandom.urlsafe_base64(10), :library_id => 1)
drunken_adventure.pages.create(name: "start", text: "Watch as Amy makes a complete fool of herself getting blackout drunk around town. I can't wait to [[see the end|end]]")
drunken_adventure.pages.create(name: "end", text: "And then we all got some ice cream.")
adventures << drunken_adventure
