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


Post.create(content: '<img src="https://i.imgur.com/x0ml8.png" alt="meme" style="width:350px;height:600px;">',user: user1, title: 'Some programming meme' )
Post.create(content: '<img src="https://i.imgur.com/rsD0RUq.jpg" style="width:350px;height:250px;">
',user: user2, title: 'I luv my cat! ❤' )
Post.create(content: '<img src="https://i.imgur.com/aZyuQ2R.jpg" style="width:350px;height:250px;">',user: user3, title: 'That''s a weird horse right there partner' )
Post.create(content: '<img style="-webkit-user-select: none;" src="https://i.imgur.com/cuH8qzg.gif">',user: user3, title: 'The good ol'' times...' )
Post.create(content: '<img style="-webkit-user-select: none;" src="https://i.imgur.com/zX7FEUP.jpg">',user: user4, title: 'Upvotes for everyone!' )
Post.create(content: '<img style="-webkit-user-select: none;" src="https://i.imgur.com/5KvMmNg.gif">',user: user4, title: 'A tilte' )
Post.create(content: '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',user: user5, title: 'Woah! trippy, dude.' )
Post.create(content: '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',user: user6, title: 'So hardcore' )
Post.create(content:'Hell of forage banh mi duis blog disrupt paleo stumptown tote bag meh pickled artisan. Cardigan neutra velit YOLO culpa. Palo santo bicycle rights coloring book yr, shabby chic dolor lorem bushwick lo-fi ad kinfolk everyday carry meditation locavore id. Squid dolore gentrify, food truck wolf adaptogen artisan yuccie cillum in air plant truffaut. 90''s cupidatat mixtape commodo, schlitz keffiyeh etsy fixie selvage edison bulb XOXO messenger bag echo park la croix vinyl.' ,user: user6, title: 'Hipster ipsum' )
Post.create(content: 'Aliquip dreamcatcher prism, gluten-free ullamco yr crucifix master cleanse blue bottle officia vape authentic farm-to-table. Hell of nostrud viral plaid gochujang duis pitchfork retro kombucha artisan austin microdosing cronut dolor. Ea man bun listicle single-origin coffee intelligentsia, irony laborum ennui. Whatever retro portland hashtag umami forage.',user: user6, title:  'How quaint.')
