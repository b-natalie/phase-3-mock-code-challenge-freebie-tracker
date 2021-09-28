puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "T-shirt", value: 20, company: google, dev: rick)
Freebie.create(item_name: "Pen", value: 1, company: facebook, dev: gazorpazop)
Freebie.create(item_name: "Coaster", value: 8, company: dunder, dev: morty)
Freebie.create(item_name: "Portable Charger", value: 12, company: enron, dev: meseeks)
Freebie.create(item_name: "Notepad", value: 5, company: facebook, dev: morty)
Freebie.create(item_name: "Hat", value: 15, company: google, dev: rick)
Freebie.create(item_name: "Water Bottle", value: 20, company: enron, dev: meseeks)

puts "Seeding done!"
