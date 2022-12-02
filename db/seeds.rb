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
               description: 'Home away from home...We love it when travelers describe Ventana Sur that way as it is exactly what we try to be',
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

Hostel.create!(name: 'Residencia Universitaria Erasmo',
               city: 'Madrid',
               address: 'C/ Erasmo de Rotterdam, 7. 28049 Madrid, Madrid, Spain',
               description: 'The Erasmo Residence Hall is located within the campus of the Autonomous University of Madrid, located 15 km from the city center. It offers single and double studios with a kitchenette, a private bathroom and free Wi-Fi.',
               user: user)

Hostel.create!(name: 'The Hat Madrid',
               city: 'Madrid',
               address: ' Calle Imperial 9, Madrid, Madrid, Spain',
               description: 'The Hat Madrid is the first Boutique Hostel in town. Located in a mansion in the best tourist area in the Plaza Mayor, 3 minutes walk from the Puerta del Sol, Gran Via and La Latina.',
               user: user)


Hostel.create!(name: 'Athens Hub Hostel',
               city: 'Athens',
               address: 'Agias Eleousis 7, Athens, Greece',
               description: 'A boutique hostel ideally located in Psyri neighborhood, close to the Acropolis, Monastiraki and Syntagma squares. We go above and beyond to accommodate your needs in order to provide hotel services for a hostel budget.',
               user: user)


Hostel.create!(name: 'City Circus Athens',
               city: 'Athens',
               address: '16 Sarri street, Athens, Greece',
               description: 'If a roof terrace with a stunning view of the Acropolis sounds like your kind of thing, you need to stop by at the City Circus.',
               user: user)

Hostel.create!(name: 'Anny Studios - Perissa Beach',
               city: 'Santorini',
               address: 'Perissa Beach, Santorini, Greece',
               description: 'Anny Studios are situated at the centre of Perissa, 30 meters from the beach (the location couldn\'t be better).',
               user: user)

Hostel.create!(name: 'Bedspot Hostel',
               city: 'Santorini',
               address: 'Agiou Athanasiou Fira, Santorini, Greece',
               description: 'Cosy and small spaces to hang out ideal for a quick stop to experience Santorini, a bucket list destination with magnificent views of the volcano and steep hills of Caldera.',
               user: user)

Hostel.create!(name: 'Destinations Hostels @ The Gallery',
               city: ' London',
               address: '1 Lupus street, Pimlico, London, England',
               description: 'We are back, we previously operated near London Bridge, we have now moved to Pimlico, north of the river, bigger, better and closer to transport and the tourist sites.',
               user: user)

Hostel.create!(name: 'Hostel One Notting Hill',
               city: 'London',
               address: '63 Prince\'s Square, London, England',
               description: 'The perfect place for solo travelers to connect, explore and party! Join the H1 Family and let us show you the beautiful city of London!',
               user: user)

Hostel.create!(name: 'Urbany Hostel London',
               city: 'London',
               address: '48-49 Princes Square, Paddington, London, England',
               description: 'Welcome to Urbany Hostel London, our first international adventure! We offer you a perfect spot to explore the city, we are a social youth backpacker hostel, a place where you can make friends & feel at home.',
               user: user)

Hostel.create!(name: 'FIAP Jean Monnet',
               city: 'Paris',
               address: '30 Rue Cabanis, Paris, France',
               description: 'Our hostel has 480 beds in single, twin, triple and quads rooms, all equipped with ensuite shower and toilet. Towels and linen are provided. breakfast is included.',
               user: user)

Hostel.create!(name: 'The People - Paris Nation',
               city: 'Paris',
               address: '28 Place de la Nation, Paris, France',
               description: 'Drop in for a frosty beer or a signature cocktail with your favorite pizza topping at our Italian rooftop restaurant overlooking The City of Love. We boast custom-made comfy bunkbeds or home away from home, private rooms with all the mod cons you\'ll ever need.',
               user: user)

Hostel.create!(name: 'Hotel Berlioz',
               city: 'Lyon',
               address: '12, cours Charlemagne, Lyon, France',
               description: 'We are in a prime location in the middle of Lyon\'s historic \'presquile\'. We are only 10 minutes walk away from the town centre, near Place Bellecour.',
               user: user)

Hostel.create!(name: 'Le Simplon',
               city: 'Lyon',
               address: '11 Rue Duhamel, Lyon, France',
               description: 'Hotel Simplon offers en suite accommodation in Lyon\s Presqu\'île district between the Rhone and Saône Rivers. Each room is uniquely decorated and free WiFi is available throughout the hotel.',
               user: user)

Hostel.create!(name: 'The RomeHello Hostel',
               city: 'Rome',
               address: 'Via Torino n. 45, Rome, Italy',
               description: 'The RomeHello offers you a stay in Rome in a hospitable place full of energy and positive vibes, where living the city becomes a new experience.',
               user: user)

Hostel.create!(name: 'The Beehive',
               city: 'Rome',
               address: 'Via Marghera 8, Rome, Italy',
               description: 'Common areas include a courtyard garden, a comfortable indoor lounge where you can relax at any time of the day and use of our communal kitchen. We are not a party hostel, but that doesn\'t mean we don\'t want guests to socialize! For us it\'s about.',
               user: user)

Hostel.create!(name: 'Ostello Bello',
               city: 'Milan',
               address: 'Via Medici 4, Milan, Italy',
               description: 'Ostello Bello is one of our newest hostels and has already made a huge impression - this highly rated hostel was named the Second-Best New Hostel Worldwide at the 2011 Hoscars. ',
               user: user)

Hostel.create!(name: 'Zen Harmony House',
               city:' Sydney',
               address: '201-203 Brougham St, Kings Cross, Sydney, Australia',
               description: 'Zen Harmony House is Sydney\'s only NON-alcoholic shared accommodation, allowing you to get away from the usual crazy hostel antics and get some better rest.',
               user: user)

Hostel.create!(name: 'The Pacific House',
               city: 'Sydney',
               address: '50 Sir John Young Crescent, Woolloomooloo, Sydney, Australia',
               description: 'At Pacific House Hostel, we believe that luxury and affordability are compatible, that the historical and the contemporary are excellent bedfellows.',
               user: user)

Hostel.create!(name: 'CarricHouse',
               city: 'Melbourne',
               addresss: '38 Howard st, Melbourne, Australia',
               description: 'CarricHouse provide a home feeling, luxury- hostel style accommodation to travellers and international students .',
               user: user)

Hostel.create!(name: 'Ipanema Club Hostel',
               city: 'Rio de Janeiro',
               address: 'R. Prudente de Morais, 903, Rio de Janeiro, Brazil',
               description: 'Featuring free Wi-Fi throughout the property, Ipanema Hostel Club is located in Rio de Janeiro, 656 feet from Post 9 - Ipanema.',
               user: user)

Hostel.create!(name: 'Hospedaria Rio',
               city: 'Rio de Janeiro',
               address: 'Rua Vicente De Sousa, 29, Rio de Janeiro, Brazil',
               description: 'Hospedaria Rio is a hostel that values comfort and care with a personal touch. A place made so you can feel like home. In a colonial house Hospedaria Rio is the cosiest place in Rio. ',
               user: user)

Hostel.create!(name: 'Hostel Internacional Campo Base',
               city: 'Mendoza',
               address: 'Av. Mitre 946 entre Rivadavia, y Montevideo, Mendoza, Argentina',
               description: 'Location: Walking distance from everything you need, in the heart of the city in front of Independencia Square.',
               user: user)

Hostel.create!(name: 'Cairo Inn',
               city: 'Cairo',
               address: '6 Talaat Harb Square, Downtown, Cairo, Egypt',
               description: 'This hotel is within close proximity of American University of Cairo and Abdin Palace.',
               user: user)

Hostel.create!(name: 'Bed & Chai',
               city: 'New Delhi',
               address: 'R-55, second floor, Greater Kailash-1, New Delhi, India',
               description: 'Bed is what backpackers need and Chai is what Indian\'s favorite baverage in daily live, When it comes together, we make sure you will have a memorable stay in New Delhi',
               user: user)

Hostel.create!(name: 'A Sleepy Fox',
               city:'New Delhi',
               address: 'B-13 2ND FLOOR, KAILASH COLONY, New Delhi, India',
               description: 'The hostel has some units that feature a patio and garden view, and all rooms are equipped with a private bathroom and a desk. At A sleepy Fox, every room includes a seating area.',
               user: user)
               

hostels = Hostel.all.where(latitude: nil)
hostels.each do |hostel|
  hostel.destroy
end
hostels_add_rooms = Hostel.all.to_a
hostels_add_rooms.each do |hostel|
  5.times do
    room = Room.new(name: Faker::Fantasy::Tolkien.location, number_of_beds: rand(1..10), price_per_night: rand(20..40), description:Faker::Fantasy::Tolkien.poem, quantity: 1 )
    room.hostel = hostel
    room.save
  end
  amenities = Amenity.all.to_a
  amenities.each do |amenity|
    tag = AmenityTag.new(amenity:amenity)
    tag.hostel = hostel
    tag.save
  end
end
