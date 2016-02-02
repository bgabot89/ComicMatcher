# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1= User.create(username: "Bchan", first_name: "Brian", last_name: "Gabot", age: 26, email: "bgabot89@gmail.com", password: "password", person: "Artist", sex: "Male", about: "Hi my name is Brian, I am an artist seeking a writer on the site. I usually prefer to draw in a manga style, but am currently trying to teach myself new art styles", tech: "Softwares: Adobe Photoshop, Illustrator, Painttool Sai, Sketchbook Pro. Techs: Pencil, Pen, Mouse, Wacom Tablet")
user2= User.create(username: "Jamester", first_name: "Jamey", last_name: "Hollis", age: 20, email: "ilovegreensweaters@gmail.com", password: "password", person: "Writer", sex: "Male", about: "My name is Jamey, I am awesome at writing", tech: "Softwares: Microsoft Word")
user3= User.create(username: "RickRoll", first_name: "Rick", last_name: "Astley", age: 49, email: "nevergonnagiveyouup@gmail.com", password: "password", person: "Writer", sex: "Male", about: "My name is Rick Astley. I love to write about songs about not giving you up and never letting you down. I look forward to collaborating with a fellow artist!", tech: "Techs: microphone and pen")

drawing1= Drawing.create(name: "Fiora", picture: "/images/fiora.png")

publishedwork1 = PublishedWork.create(name: "Finished Comic", description: "This is a finished comic we made.", writer: "K.C. Green", artist: "Anonymous", url:"gunshowcomic.com/648")

