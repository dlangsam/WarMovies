# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

params = [
	  { name: 'Band Of Brothers', 
  		year: 2001, 
  		classic: false,
  		tagline: "Ordinary men. Extraordinary times.",
  		images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/bob3.jpg",
  		     				main: true} ]
  	},
  	{ name: 'Lost Battalion', 
  	year: 2001, 
  	classic: false,
  	description: 'descriptions/lost_battalion',
  	tagline: "Caught between two lines of fire, the Germans gave them two options: surrender or die. They chose a third.", 
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/lb1.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/lb2.jpg"} ]

  	 },
  { name: 'Pearl Harbor', year: 2001, classic: false ,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ph1.jpg",
  		     				main: true} ]
   },
  { name: 'Saving Private Ryan', year: 1998, classic: false ,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/spr2.jpg",
  		     				main: true} ]
   },
  { name: 'Windtalkers', year:2002, classic: false , 
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/wt2.jpg",
  		     				main: true} ]
  	},
  { name: 'Patton', year: 1970, classic: true, 
  images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/patton1.jpg",
  		     				main: true} ] 
  	},
  { name: 'The Desert Fox', year: 1951, classic: true,
  images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/tdf1.jpg",
  		     				main: true} ] 
   },
  { name: 'The Longest Day', year: 1962, classic: true ,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/tld2.jpg",
  		     				main: true} ]
   },
  { name: 'To the Shores of Tripoli', year: 1942, classic: true,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ttsot2.jpg",
  		     				main: true} ]
    },
  { name: 'Tora! Tora! Tora!', year: 1970, classic: true,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ttt1.jpg",
  		     				main: true} ]
    }
]

params.each do |param|
	Movie.create(param)

end


Quote.create!([
{saying: "Never in the field of human conflict has so much been owed by so many to so few!",
 author: "Winston Churchill"},
 {saying: "An army is a team. It lives, eats, sleeps, fights as a team. This individuality stuff is a bunch of bullshit.",
 author: "George Patton"},
 {saying: "Courage is fear holding on a minute longer.",
 author: "George Patton"},
 {saying: "I'd rather have a German division infront of me, than a French one behind.",
 author: "George Patton"},
 {saying: "We herd sheep, we drive cattle, we lead people. Lead me, follow me, or get out of my way.",
 author: "George Patton"},
 {saying: "The tragedy of war is that it uses man's best to do man's worst.",
 author: "Henry Fosdick"},
 {saying: "We are going to have peace even if we have to fight for it.",
 author: "Dwight D. Eisenhower"},
 {saying: "The death of one man is a tragedy.  The death of millions is a statistic.",
 author: "Joseph Stalin"},
 {saying: "The object of war is not to die for your country, but to make the other bastard die for his.",
 author: "George Patton"}
])