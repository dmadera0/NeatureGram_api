# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Post.destroy_all

User.create(name:"Daniel Madera", password:"Madera")

Post.create(title:"Snow Caped Shiprock, NM", image:"https://c4.wallpaperflare.com/wallpaper/323/346/517/mountains-snow-caps-desert-shiprock-wallpaper-preview.jpg", description:"shiprock in the winter",user_id: 1)
Post.create(title:"white sands, NM", image:"https://www.innsbrookcondos.com/wp-content/uploads/2018/01/67068613_S.jpg", description:"white sands",user_id: 1)
Post.create(title:"bisti badlands", image:"https://imgur.com/gallery/1CdVTWp", description:"bisti rock formations",user_id: 1)
Post.create(title:"carlsbad cavern, NM", image:"https://imgur.com/t/carlsbad_caverns_national_park/bB5Wj72", description:"the cavern",user_id: 1)