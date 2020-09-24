# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(name: "Art & Culture")
c2 = Category.create(name: "Comedy")
c3 = Category.create(name: "Outdoor Activities")
c4 = Category.create(name: "Film & TV")
c5 = Category.create(name: "Food & Drink")
c6 = Category.create(name: "Live Music")
c7 = Category.create(name: "LGBTQ+")
c8 = Category.create(name: "Other")

e1 = Event.create(name: "Watch A Bug's Life", 
description: "Go to theater and watch a Bug's life, the classic tale of a dorky any who overcomes many challenges in order to defeat a whole lot of mean grasshoppers.",
duration: "1 hour 35 minutes", cost: "40.00", location: "Alamo Drafthouse - Lakeline")

e2 = Event.create(name: "Blue's on the Green", 
description: "See Wild Child at Blue's on the Green. Don't forget it's BYOB.", 
duration: "2-3 hours", cost: "0.00", location: "2100 Barton Springs Rd., Zilker Park, Austin, TX 78746")

e3 = Event.create(name: "Kayaking", description: "Need to secure the rental first from Congress Ave. Kayaks, check for groupon.", 
duration: "2 hours", cost: "38.00", location: "Waller Creek Boathouse: 74 Trinity Street, Austin, Texas 78701")

o1 = Occasion.create(name: "Hot Date", date: "2020-10-10", time: "15:43")

o2 = Occasion.create(name: "Shannon's Birthday", date: "2020-10-15", time: "17:43")

o3 = Occasion.create(name: "Anniversary", date: "2020-11-15", time: "16:43")

c4.events << e1 
c6.events << e2 
c3.events << e3


o1.events << [e1, e2] 

o2.events << e3 

o3.events << e2 