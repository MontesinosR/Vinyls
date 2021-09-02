# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Destroying data"
User.destroy_all
Vinyl.destroy_all

puts "Seeding data"
steve = User.create(email: "steve@v.com", password: "123456")
carlos = User.create(email: "carlos@v.com", password: "123456")
loulou = User.create(email: "loulou@v.com", password: "123456")
alex = User.create(email: "alex@v.com", password: "123456")

vinyl1 = Vinyl.create(album_name: "Pet Sounds", artist: "The Beach Boys", description: "“Who’s gonna hear this shit?” Beach Boys singer Mike Love asked the band’s resident genius, Brian Wilson, in 1966, as Wilson played him the new songs he was working on. “The ears of a dog?” Confronted with his bandmate’s contempt, Wilson made lemonade of lemons. “Ironically,” he observed, “Mike’s barb inspired the album’s title.”", condition: "Okay", genre: "Pop", daily_rate: 2, user: alex)

vinyl2 = Vinyl.create(album_name: "Blue", artist: "Joni Mitchell", description: "In 1971, Joni Mitchell represented the West Coast feminine ideal — celebrated by Robert Plant as “a girl out there with love in her eyes and flowers in her hair” on Led Zeppelin’s “Goin’ to California.” It was a status that Mitchell hadn’t asked for and did not want: “I went, ‘Oh, my God, a lot of people are listening to me,’” she recalled in 2013. “’They better find out who they’re worshiping. Let’s see if they can take it. Let’s get real.’ So I wrote Blue.”", condition: "Okay", genre: "Classic Rock", daily_rate: 2, user: carlos)

vinyl3 = Vinyl.create(album_name: "Discovery", artist: "Daft Punk", description: "The robot duo from France perfected house music as pop on their 1997 album Homework. For the follow-up, they took electronic dance music to a whole new place, with the vocoder euphoria of “One More Time” and the deep-groove delight “Harder, Better, Faster, Stronger,” where the title is chanted like a mantra at a dystopian corporate retreat.", condition: "Good", genre: "Disco", daily_rate: 2, user: steve)

vinyl4 = Vinyl.create(album_name: "Thriller", artist: "Michael Jackson", description: "Michael Jackson towered over the Eighties the way no superstar before or since has dominated an era — not even Elvis or the Beatles. And Thriller is the reason why. Still in his early twenties, the R&B child star of the 1970s had ripened into a Technicolor soul man: a singer, dancer, and songwriter with incomparable crossover instincts.", condition: "Mint Condition", genre: "Pop", daily_rate: 1, user: loulou)

vinyl5 = Vinyl.create(album_name: "Kid A", artist: "Radiohead", description: "A new, uniquely fearless kind of rock record for a new, increasingly fearful century, Radiohead’s fourth album, released in October 2000, remains one of the more stunning sonic makeovers in music history. The band had the freedom to do whatever it wanted after its 1997 alt-rock breakthrough, OK Computer [see No. 42]. “Everyone expected us to become this U2 type of band, with that stadium credibility,” bassist Colin Greenwood said in 2001.", condition: "Okay", genre: "Classic Rock", daily_rate: 2, user: alex)

vinyl6 = Vinyl.create(album_name: "My Beautiful Dark Twisted Fantasy", artist: "Kanye West", description: "Our relationship with Kanye West was still in its love-hate phase when he created the 21st century’s most awe-inspiring hip-hop masterpiece. It’s an album every bit as chaotic as he was at the time — from the creepy funk of “Gorgeous” to the crushing attack of “Hell of a Life.” After his Taylor Swift VMAs fiasco in 2009, West went into a kind of self-exile, eventually ending up in Hawaii, where he imported a huge group of collaborators who included Justin Vernon of Bon Iver, Nicki Minaj, and RZA.", condition: "Okay", genre: "Hip-Hop", daily_rate: 2, user: carlos)

vinyl7 = Vinyl.create(album_name: "Rumours", artist: "Fleetwood Mac", description: "With Rumours, Fleetwood Mac turned private turmoil into gleaming, melodic public art. The band’s two couples — bassist John McVie and singer-keyboard player Christine McVie, who were married; guitarist Lindsey Buckingham and vocalist Stevie Nicks, who were not — broke up during the protracted sessions for the album. As John later told Rolling Stone of the atmosphere during the making of Rumours, “Parties going on all over the house. Amazing. Terrifying. Huge amounts of illicit materials, yards and yards of this wretched stuff. Days and nights would just go on and on.”", condition: "Good", genre: "Classic Rock", daily_rate: 3, user: steve)

vinyl8 = Vinyl.create(album_name: "London Calling", artist: "The Clash", description: "Recorded in 1979 in London, which was then wrenched by surging unemployment and drug addiction, and released in America in January 1980, the dawn of an uncertain decade, London Calling is 19 songs of apocalypse fueled by an unbending faith in rock & roll to beat back the darkness. Produced with no-surrender energy by legendary Sixties studio madman Guy Stevens, the Clash’s third album sounds like a free-form radio broadcast from the end of the world, skidding from bleak punk (“London Calling”) to rampaging ska (“Wrong ’Em Boyo”) and disco resignation (“Lost in the Supermarket”).", condition: "Worn", genre: "Classic Rock", daily_rate: 1, user: loulou)

vinyl9 = Vinyl.create(album_name: "Kind of Blue", artist: "Miles Davis", description: "This painterly masterpiece is one of the most important, inﬂuential, and popular albums in jazz. At the time it was made, Kind of Blue was also a revolution all its own.", condition: "Worn", genre: "Jazz", daily_rate: 1, user: alex)

vinyl10 = Vinyl.create(album_name: "Back to Black", artist: "Amy Winehouse", description: "Our relationship with Kanye West was still in its love-hate phase when he created the 21st century’s most awe-inspiring hip-hop masterpiece. It’s an album every bit as chaotic as he was at the time — from the creepy funk of “Gorgeous” to the crushing attack of “Hell of a Life.” After his Taylor Swift VMAs fiasco in 2009, West went into a kind of self-exile, eventually ending up in Hawaii, where he imported a huge group of collaborators who included Justin Vernon of Bon Iver, Nicki Minaj, and RZA.", condition: "Mint Condition", genre: "Jazz", daily_rate: 4, user: carlos)

vinyl11 = Vinyl.create(album_name: "Love to Love You Baby", artist: "Donna Summer", description: "It’s true the “Queen of Disco” represents only one aspect of what the genre offers, but releases like this 1975 album are undeniable. Side 1 is the 16-plus-minute title track, Summer and producer Giorgio Moroder’s infamous, orgasm-happy and ever-building groove, which set the hedonistic tone for the second half of the 1970s.", condition: "Okay", genre: "Disco", daily_rate: 3, user: steve)

vinyl12 = Vinyl.create(album_name: "Sech", artist: "Sueños", description: "After penning songs for other acts, Panamanian singer-songwriter Sech decided to make his dreams of becoming an artist a reality with his debut album, 2019’s Sueños. The cover art shows him as a cuddly bear in space planting a flag on the moon. He takes a giant leap in representation for his country and Afro-Latinx musicians in reggaeton.", condition: "Worn", genre: "Reggaeton", daily_rate: 1, user: loulou)

vinyl13 = Vinyl.create(album_name: "OK Computer", artist: "Radiohead", description: "Radiohead recorded their third album in the mansion of actress Jane Seymour while she was filming Dr. Quinn, Medicine Woman. OK is where the band began pulling at its sound like taffy, seeing what happened, not worrying if it was still “rock.” What resulted is a slow, haunting album with unforgettable tracks such as “Karma Police.”", condition: "Mint Condition", genre: "CLasic Rock", daily_rate: 3, user: alex)

vinyl14 = Vinyl.create(album_name: "The Low End Theory", artist: "A Tribe Called Quest", description: "“We wanted the longevity of Earth, Wind, and Fire, and Prince, and people of that nature,” Phife Dawg told Rolling Stone. “We wanted to be known for full-length albums.” Other people connected the dots between hip-hop and jazz , but A Tribe Called Quest’s second album drew the entire picture.", condition: "Mint Condition", genre: "Hip-Hop", daily_rate: 2, user: carlos)

vinyl15 = Vinyl.create(album_name: "Darkness on the Edge of Town", artist: "Bruce Springsteen", description: "“When I was making this particular album, I just had a specific thing in mind,” Bruce Springsteen told Rolling Stone. “It had to be just a relentless … just a barrage of that particular thing.” His obsession on this album is a common one: how to go on living in a mean world when your youthful dreams have fallen apart.", condition: "Okay", genre: "Classic Rock", daily_rate: 1, user: steve)

vinyl16 = Vinyl.create(album_name: "Born to Run", artist: "Bruce Springsteen", description: "Bruce Springsteen spent everything he had — patience, energy, studio time, the physical endurance of his E Street Band — to ensure that his third album was a masterpiece. His reputation as a perfectionist begins here: There are a dozen guitar overdubs on the title track alone. He was also spending money he didn’t have.", condition: "Worn", genre: "Classic Rock", daily_rate: 5, user: loulou)


vinyl1.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-002-Beach-Boys-PET-SOUNDS-update.jpg?w=1000"), filename: 'cover.jpeg', content_type: 'image/jpg')
vinyl2.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-003-JoniMitchell-BLUE-HR.jpg?w=1000"), filename: 'cover.jpeg', content_type: 'image/jpg')
vinyl3.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-236-Daft-Punk-Discovery.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl4.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-012-MichaelJacksonThriller.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl5.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-020-Radiohead-KID-A.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl6.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-017-Kanye-My-Beautiful-Dark-Twisted-Fantasy.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl7.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-007-Fleetwood-Mac-RUMOURS.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl8.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/016-Clash-LONDON-CALLING.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl9.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-031-Miles-Davis-KIND-OF-BLUE.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl10.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-033-Amy-Winehouse-Back-to-Black.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl11.photo.attach(io: URI.open("https://vmp-www.imgix.net/images/donna_summer_love_to_love_you_baby.original.jpg?auto=format&w=1660&h=1673"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl12.photo.attach(io: URI.open("https://consequence.net/wp-content/uploads/2020/03/Sech-Suenos.jpg"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl13.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-042-Radiohead-OK-Computer.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl14.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-043-A-Tribe-Called-Quest-The-Low-End-Theory.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl15.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-091-bruce-springsteen-darkness-on-the-edge-of-town.jpg?w=1000"), filename: 'cover.jpg', content_type: 'image/jpg')
vinyl16.photo.attach(io: URI.open("https://www.rollingstone.com/wp-content/uploads/2020/09/R1344-021-Bruce-Springsteen-BORN-TO-RUN.jpg?w=1000"), filename: 'cover.jpeg', content_type: 'image/jpeg')
