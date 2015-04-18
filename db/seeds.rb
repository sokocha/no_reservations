# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





Booking.delete_all
Category.delete_all
Restaurant.delete_all
User.delete_all


admin = User.create(username: 'okochito', role: 'admin', email: 'admin@gmail.com', password: 'password')

user1 = User.create(username: 'chefo', email: 'user1@gmail.com', password: 'password')

user2 = User.create(username: 'curryGod', email: 'user2@gmail.com', password: 'password')

user3 = User.create(username: 'SkinnyChef', email: 'user3@gmail.com', password: 'password')

user4 = User.create(username: 'Garlic+Onions', email: 'user4@gmail.com', password: 'password')

user5 = User.create(username: 'Lola', email: 'user5@gmail.com', password: 'password')

user6 = User.create(username: 'Zed', email: 'user6@gmail.com', password: 'password')


admin_restaurateur = Restaurateur.create!(user_id: admin.id)
user1_restaurateur = Restaurateur.create!(user_id: user1.id) 
user2_restaurateur = Restaurateur.create!(user_id: user2.id)
user3_restaurateur = Restaurateur.create!(user_id: user3.id)
user4_restaurateur = Restaurateur.create!(user_id: user4.id)
user5_restaurateur = Restaurateur.create!(user_id: user5.id)
user6_restaurateur = Restaurateur.create!(user_id: user6.id)




american = Category.create!(name: 'American');
brazilian = Category.create!(name: 'Brazilian');
chinese = Category.create!(name:'Chinese');
french = Category.create!(name: 'French');
korean = Category.create!(name: 'Korean');
nigerian = Category.create!(name: 'Nigerian');
jamaican = Category.create!(name: 'Jamaican');
japanese = Category.create!(name: 'Japanese');
italian = Category.create!(name: 'Italian');

bogo_biri = Restaurant.create!(name: 'Bogo Biri' , description: "Traditional south-west Nigerian food" , category_id: nigerian.id , restaurateur_id: admin_restaurateur.id ,address: "9, Maitama Sule Street, Lagos");

five_guys = Restaurant.create!(name: 'Five Guys' , description: "Five Guys Burgers and Fries offers handcrafted burgers, fries, hot dogs and more in the US, UK and Canada." , category_id: american.id , restaurateur_id: user1_restaurateur.id ,address: "22 Olamijuyin Street, Lagos" );

mr_chows = Restaurant.create!(name: 'Mr Chows' , description: "Bogobiri House is much more than a sixteen room boutique hotel in high brow Ikoyi, Lagos. We offer friends and visitors a unique opportunity to interface with the creative soul of Africa's most vibrant city. Our recent expansion and newly upgraded rooms are perfect for business and leisure travellers. In close to a decade of operation, We have become a hub for the promotion and appreciation of art, music and local knowledge whilst not compromising our core values: First class service, security and your utmost comfort.
" , category_id: chinese.id , restaurateur_id: user2_restaurateur.id ,address: '10c Ilabere Avenue, Lagos'  );

ken_los_memories = Restaurant.create!(name: "Ken Lo's Memories of China" , description: "Ken Lo's Memories of China has maintained its enviable reputation for its consistently high standards of authentic Chinese cuisine since its first opening some 30 years ago.
Situated in London's exclusive Belgravia, Ken Lo's has long been a neighbourhood gem and continues to receive oustanding reviews. As well as impeccable service, the restaurant also offers an impressive wine list and is beautifully decorated with traditional Chinese style wood and fabrics for an atmospheric setting. For those in the know, the restaurant will also accomodate takeaway service." , category_id: chinese.id , restaurateur_id: user3_restaurateur.id ,address: "65-69 Ebury Street, London SW1W 0NZ");

la_petite_maison = Restaurant.create!(name: "La Petitie Maison", description: "Chef Raphael Duntoye serves upscale French Mediterranean food to chic crowd in smart dining room." , category_id: french.id , restaurateur_id: user4_restaurateur.id ,address: " 54 Brook's Mews, London W1K 4EG" );

falomo = Restaurant.create!(name: "Falomo" , description: "Finest Nigerian food in the UK served by Chef Remi Williams" , category_id: korean.id , restaurateur_id: user5_restaurateur.id ,address: "122 Oxford Street, London, UK");

irie = Restaurant.create!(name: "Irie BBQ", description: "Jamaican food with a spanish twist" , category_id: jamaican.id , restaurateur_id: user6_restaurateur.id ,address: "88 Regents Street, London, UK" );

sushi_samba = Restaurant.create!(name: "Sushi Samba", description: "Only at SUSHISAMBA will you find a unique blend of Japanese, Brazilian and Peruvian cuisine, music and design." , category_id: brazilian.id , restaurateur_id: user6_restaurateur.id ,address: "Heron Tower, 110 Bishopsgate, London EC2N 4AY");

koya = Restaurant.create!(name: "Koya Bar & Grill" , description: "Simple, cafe-style Japanese for udon noodles and small plates served at communal tables." , category_id: japanese.id , restaurateur_id: admin_restaurateur.id ,address: "49 Frith Street, London W1D 4SG" );

nobu = Restaurant.create!(name: "Nobu" , description: "Nobu, the worlds most recognized Japanese restaurant, known for its innovative new style cuisine paired with a hip crowd and celebrity following." , category_id: japanese.id, restaurateur_id: admin_restaurateur.id ,address: "Metropolitan Hotel London, 19 Old Park Lane, London" );

pizza_hut = Restaurant.create!(name: "Pizza Hut" , description: "Order great pizza online for delivery or find out where your nearest branch is for dine in or collection. Visit the Pizza Hut website now!" , category_id: italian.id , restaurateur_id: user2_restaurateur.id ,address: "187, Baker Street, London" );

princi = Restaurant.create!(name: "Princi", description: "Popular, counter-service Milanese bakery and pizzeria with modern, minimalist styling." , category_id: italian.id, restaurateur_id: user3_restaurateur.id  ,address: "135 Wardour Street, London W1F 0UT" );


