# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email: "email1@email.com", username: "Thats_me", password: "password")
user2 = User.create(email: "email2@email.com", username: "crazycatlady", password: "password")
user3 = User.create(email: "email3@email.com", username: "silverstallion", password: "password")
user4 = User.create(email: "email4@email.com", username: "skittles123", password: "password")
user5 = User.create(email: "email5@email.com", username: "just_so_hardcore", password: "password")
user6 = User.create(email: "email6@email.com", username: "hipsterguy", password: "password")


Post.create(content: 'https://i.imgur.com/x0ml8.png',user: user1, title: 'Some programming meme' )
Post.create(content: 'https://i.imgur.com/rsD0RUq.jpg',user: user2, title: 'I luv my cat! ❤' )
Post.create(content: 'https://i.imgur.com/aZyuQ2R.jpg',user: user3, title: 'That''s a weird horse right there partner' )
Post.create(content: 'https://i.imgur.com/cuH8qzg.gif',user: user3, title: 'The good ol'' times...' )
Post.create(content: 'https://i.imgur.com/zX7FEUP.jpg',user: user4, title: 'Upvotes for everyone!' )
Post.create(content: 'https://i.imgur.com/5KvMmNg.gif',user: user4, title: 'A tilte' )
Post.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user: user5, title: 'Woah! trippy, dude.' )
Post.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user: user6, title: 'So hardcore' )
Post.create(content:'Hell of forage banh mi duis blog disrupt paleo stumptown tote bag meh pickled artisan. Cardigan neutra velit YOLO culpa. Palo santo bicycle rights coloring book yr, shabby chic dolor lorem bushwick lo-fi ad kinfolk everyday carry meditation locavore id. Squid dolore gentrify, food truck wolf adaptogen artisan yuccie cillum in air plant truffaut. 90''s cupidatat mixtape commodo, schlitz keffiyeh etsy fixie selvage edison bulb XOXO messenger bag echo park la croix vinyl.' ,user: user6, title: 'Hipster ipsum' )
Post.create(content: 'Aliquip dreamcatcher prism, gluten-free ullamco yr crucifix master cleanse blue bottle officia vape authentic farm-to-table. Hell of nostrud viral plaid gochujang duis pitchfork retro kombucha artisan austin microdosing cronut dolor. Ea man bun listicle single-origin coffee intelligentsia, irony laborum ennui. Whatever retro portland hashtag umami forage.',user: user6, title:  'How quaint.')




Vote.create(like: 't', user_id: 1, post_id: 1)
Vote.create(like: 'f', user_id: 1, post_id: 9)

Vote.create(like: 'f', user_id: 2, post_id: 1)
Vote.create(like: 't', user_id: 2, post_id: 2)

Vote.create(like: 't', user_id: 3, post_id: 1)
Vote.create(like: 't', user_id: 3, post_id: 2)
Vote.create(like: 't', user_id: 3, post_id: 3)

Vote.create(like: 't', user_id: 4, post_id: 1)
Vote.create(like: 't', user_id: 4, post_id: 2)
Vote.create(like: 'f', user_id: 4, post_id: 3)
Vote.create(like: 'f', user_id: 4, post_id: 4)
Vote.create(like: 't', user_id: 4, post_id: 5)
Vote.create(like: 't', user_id: 4, post_id: 6)

Vote.create(like: 't', user_id: 5, post_id: 1)
Vote.create(like: 't', user_id: 5, post_id: 2)
Vote.create(like: 'f', user_id: 5, post_id: 3)
Vote.create(like: 'f', user_id: 5, post_id: 4)
Vote.create(like: 't', user_id: 5, post_id: 5)
Vote.create(like: 'f', user_id: 5, post_id: 7)

Vote.create(like: 't', user_id: 6, post_id: 1)
Vote.create(like: 't', user_id: 6, post_id: 2)
Vote.create(like: 'f', user_id: 6, post_id: 3)
Vote.create(like: 'f', user_id: 6, post_id: 4)
Vote.create(like: 't', user_id: 6, post_id: 5)
Vote.create(like: 't', user_id: 6, post_id: 6)
Vote.create(like: 'f', user_id: 6, post_id: 7)
Vote.create(like: 't', user_id: 6, post_id: 8)
Vote.create(like: 't', user_id: 6, post_id: 9)




Comment.create(content: 'I like your cat!',user_id: 3, post_id: 2)
Comment.create(content: 'Y''all can''t tell me times haven''t changed...',user_id: 3, post_id: 4)
Comment.create(content: 'I hardly understand any of that programmin'' mumbo jumbo!',user_id: 3, post_id: 1)
Comment.create(content: 'You know it!',user_id: 4, post_id:  1)
Comment.create(content: 'meh...',user_id: 4, post_id: 2)
Comment.create(content: 'meh...',user_id: 4, post_id: 3)
Comment.create(content: 'meh...',user_id: 4, post_id:  4)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5, post_id: 7)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5,post_id:1)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5, post_id: 2)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5, post_id: 3)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5,post_id: 4)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5, post_id: 5)
Comment.create(content: 'http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg',user_id: 5, post_id: 6)
Comment.create(content: 'Cloud bread shaman single-origin coffee fanny pack, meh subway tile vaporwre typewriter portland waistcoat swag. Organic esse duis live-edge iceland tousled humblebrag.',user_id: 6, post_id: 8)
Comment.create(content: 'Gochujang affogato tilde ramps trust fund bushwick cronut tacos swag art paty vice. Meh proident lo-fi, food truck sint sed tempor kale chips hot chicken.
elvetica tumblr fugiat excepteur, readymade gluten-free dolore swag air plant craft beer nisi velit.',user_id: 6, post_id: 8)
Comment.create(content: 'Minim lyft raclette waistcoat, bushwick franzen cardigan veniam deserut raw denim vape. Chillwave subway tile pabst, paleo banh mi knausgaard locavore deserunt trust fund listicle eiusmod cronut.', user_id: 6, post_id: 9)
Comment.create(content: 'Beard wayfarers freegan activated charcoal jianbing irure ea pinterst cray eiusmod laboris. Prism mixtape yr, activated charcoal aliquip subway tile tacos letterpress literally aesthetic. Synth biodiesel dolore beard fingerstache cloud bread. Ethical laborculpa, craft beer tousled farm-to-table banh mi af humblebrag in bespoke cillum. Keffiyeh mumblecore selfies, readymade man braid yr mlkshk woke succulents church-key.',user_id: 6, post_id: 9)
Comment.create(content: 'Biodiesel swag chillwave salvia, fixie culpa et ut locavore. Nostrud fam thndercats glossier velit PBR&B, poke man bun bespoke ut fanny pack. Church-key keffiyeh lorem bicycle rights chia, mixtape jean shorts mustache fanny pack small batch meditation.' ,user_id: 6, post_id: 9)
Comment.create(content: 'Cornhole semiotics bespoke intelligentsia deep v ullamco PBR&B man braid etterpress polaroid normcore. PBR&B you probably haven''t heard of them tattooed prism id celiac drinking vinegar austin tofu taxidermy meggings green juice literally wayfarers plaid. ',user_id: 6, post_id: 10)
Comment.create(content: 'IPhone williamsburg live-edge tempor art party selfies cillum irure wolf drect trade. Sunt viral small batch mlkshk poke velit. Green juice blue bottle pabst dolor elit mumblecore banjo pok pok vaporware scenester veniam before they sold out eiusmod.',user_id: 6, post_id: 10)
Comment.create(content: 'Brooklyn church-key qui hoodie pork belly affogato street art fingertache vaporware gastropub quis 3 wolf moon reprehenderit cliche next level. Hell of enamel pin fam brunch quinoa proident.',user_id: 6, post_id: 1)
Comment.create(content: 'Commodo lumbersexual pug, tumeric activated charcoal migas before they sld out meh. Kitsch kinfolk fam brunch. +1 forage PBR&B pug woke minim. Schlitz tousled swag fixie bicycle rights veniam chartreuse. Cloud bread portland shaman ethical XOXO anim normcore poke qui hochicken eiusmod ut. Master cleanse farm-to-table green juice banjo, squid cred id.',user_id: 6, post_id: 6)
Comment.create(content: 'Commodo lumbersexual pug, tumeric activated charcoal migas before they sld out meh. Kitsch kinfolk fam brunch. +1 forage PBR&B pug woke minim. Schlitz tousled swag fixie bicycle rights veniam chartreuse. Cloud bread portland shaman ethical XOXO anim normcore poke qui hochicken eiusmod ut. Master cleanse farm-to-table green juice banjo, squid cred id.',user_id: 6, post_id: 2)
Comment.create(content: 'Lorem ipsum dolor amet consectetur occupy chillwave cloud bread actualy farm-to-table franzen ut tattooed duis four loko fugiat aute disrupt excepteur. Qui gluten-free subway tile offal, yr aliquip tousled umami pok pok locavore. Dreamcatcher laborum shabby chiactivated charcoal, gluten-free iceland paleo man braid. ',user_id: 6, post_id: 3)
Comment.create(content: 'Hexagon portland vexillologist, forage activated charcoal XOXO mixtap banh mi pour-over.',user_id: 6, post_id: 4)
Comment.create(content: 'Dolor yuccie four loko, minim brunch narwhal four dollar toast kale chips n. Retro edison bulb mumblecore, gluten-free vegan ad aliqua fugiat. Kale chips mixtape gluten-free mlkshk. ',user_id: 6, post_id: 5)
Comment.create(content: 'Sure w/e',user_id: 1, post_id: 10)
