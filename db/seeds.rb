require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Amenity.destroy_all
Amenity.create!(name: 'WiFi')
Amenity.create!(name: 'Security Lockers')
Amenity.create!(name: 'Hot Showers')
Amenity.create!(name: 'Key Card Access')
Amenity.create!(name: '24 Hour Reception')
Amenity.create!(name: 'Luggage Storage')
Amenity.create!(name: 'Breakfast Included')
Amenity.create!(name: 'Linen Included')
Amenity.create!(name: 'Towels for hire')
Amenity.create!(name: 'Bar')

Hostel.destroy_all

User.destroy_all

user = User.create(first_name: 'Joseph', last_name: "moreno", email: 'joseph@email.com', password: '123456')

Hostel.create!(
                name: 'Tanita House',
                city: 'Chiang Mai',
                address: '152 Charoenrat Road, T. Wat Kate, A. Muang, Chiang Mai, Thailand',
                description: 'Tanita House is a unique set of charming little houses made of old teak wood, along Chiang Mai\'s River Ping: a private place where you can relax in traditional wooden Northern Thai style. Our place is where you\'ll find the genuine ambience of the Thai home, vivid but peaceful. The antique shop and guest buildings around the garden of Tanita House are old, beautiful, and protected under Thailand\'s conservation laws.',
                user: user)

Hostel.create!(name: 'Hanoi Airport Suites Hostel & Travel',
               city: 'Hanoi',
               address: 'No. 66 Vo Nguyen Giap, Thai Phu, Noi Bai, Soc Son, Hanoi, Vietnam',
               description: 'With an ideal location in Hanoi. Our Hostel is located within 3 km of Noi Bai International Airport is one of the most convenient places to stay in Hanoi',
               user: user)

Hostel.create!(name: 'North Hotel No 2',
               city: 'Hanoi',
               address: '5B Tam Thuong Street, Hanoi, Vietnam',
               description: 'North Hotel established since 1990, has two hotels, North Hotel No.1 and North Hotel No.2. They are located in Hanoi Old Quarter, very near Hoan Kiem Lake, in the city\'s historic center.',
               user: user)

Hostel.create!(name: 'CROSSROADS HOSTEL',
               city: 'Manila',
               address: '76 Mariveles, StreetHighway Hills, Mandaluyong City,Philippines',
               description: 'Our hostel follows strict protocols mandated by the national government. We advise that all our guests provide us with vaccination card but if none, they are required to provide the hostel front desk with 24-hour negative antigen test or a 48-hr negative swab test',
               user: user)

Hostel.create!(name: 'Ola! Hostel Manila',
               city: 'Manila',
               address: ' 1030 P. Ocampo corner Enrique Street, Malate, Manila, Manila, Philippines',
               description: 'Ola! Hostel Manila is a 5-storey building with a total of 27 rooms that can accommodate a total of 150 guests. ALL ROOMS are equipped with air-conditioned, free wifi, own private bathrooms (w/ hot & cold shower) and lockers. CHECK IN time is 14:00 daily.',
               user: user)

Hostel.create!(name: 'Outpost Beach Hostel',
               city: 'El Nido',
               address: 'Sitio Lugadia National Highway, El Nido, Philippines',
               description: 'Were a fun and social hostel located on El Nidos sunset beach. It\'s all about comfort and being part of the lively vibe here!',
               user: user)

Hostel.create!(name: 'Thay 83 Hostel',
               city: ' Lima',
               address: 'Calle Jose Galvez 576 Miraflores, Lima, Peru',
               description: 'Located in the best district of the city of Lima, Miraflores. Thay 83 is close to the best adventure and tourism options in the city. In addition, we have comfortable facilities and all the services for a stay according to your needs.',
               user: user)

Hostel.create!(name: 'JO&JOE Medellin',
                city: 'Medellin',
                address: 'Carrera 35 #10A - 75, Medellin, Colombia',
                description: 'JO&JOE Medellin\'s open-hearted, open-minded feeling starts with our handpicked team and continues on every floor of our happy house. Bringing all the fun of a hostel and the comfort of a hotel, JO&JOE is perfect way to explore all that this incredible city offers.',
                user: user)

Hostel.create!(name: 'Ventana Sur Hostal',
                city: 'Santiago',
                address: 'Claudio Arrau 0340, Providencia, Santiago, Chile',
                description: 'Home away from home...
                We love it when travelers describe Ventana Sur that way as it is exactly what we try to be',
                user: user)

Hostel.create!(name: 'Hostal Campo Base',
                city: 'San Pedro de Atacama',
                address: 'Pachamama 657, San Pedro de Atacama, Chile',
                description: 'Hostal Campo Base will give you all the information, advice and recommendations you need to organize your time and excursions, and have a great time in San Pedro.',
                user: user)

Hostel.create!(name: 'Zurich Youth Hostel',
                city: 'Zurich',
                address: 'Mutschellenstr. 114, Zurich, Switzerland',
                description: 'On the site where a school cabin served as a hostel in 1936, there now stands a spacious new-build featuring modern infrastructure, varied cuisine, a cosy bar and a 24-hour reception',
                user: user)

Hostel.create!(name: 'Zebra Crossing',
                city: 'Cape Town',
                address: '82 New Church street, Gardens, Cape Town, South Africa',
                description: 'Clean, quiet and friendly, Zebra Crossing is situated at the foot of Table Mountain close to cafe\'s, cinemas, supermarkets and museums.',
                user: user)
