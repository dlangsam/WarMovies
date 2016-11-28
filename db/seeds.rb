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
      accuracy: 5,
      size: 35,
        description: 'band_of_brothers',
  		tagline: "Ordinary men. Extraordinary times.",
  		images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/bob3.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/bob1.jpg"}
  		     				 ]
  	},
  	{ name: 'Lost Battalion', 
  	year: 2001, 
  	classic: false,
    accuracy: 6,
    size: 16,
  	description: 'lost_battalion',
  	tagline: "Caught between two lines of fire, the Germans gave them two options: surrender or die. They chose a third.", 
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/lb1.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/lb2.jpg"} ]

  	 },
  { name: 'Pearl Harbor', year: 2001, classic: false ,
    accuracy: 3,
    size: 9,
  	description: 'pearl_harbor',
  	tagline: "December 7, 1941 - A day that shall live in infamy",
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ph1.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/ph2.jpg"},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/ph3.jpg"} ]
   },
  { name: 'Saving Private Ryan', year: 1998, classic: false ,
  	description: 'saving_private_ryan',
    accuracy: 4,
    size: 11,
  	tagline: "The mission is a man.",
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/spr2.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/spr1.jpg"} ]
   },
  { name: 'Windtalkers', year:2002, classic: false , 
  	description: 'windtalkers', 
    accuracy: 2,
    size: 11,	
  	tagline: "The Navajo Has the Code. Protect the Code at All Costs.",
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/wt2.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/wt1.jpg"} ]
  	},
  { name: 'Patton', year: 1970, classic: true, 
  	description: 'patton', 
    accuracy: 7,
    size: 1,
  images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/patton1.jpg",
  		     				main: true},
  		     			{ url: "https://s3.amazonaws.com/combat-aces/patton2.jpg"},
  		     			{ url: "https://s3.amazonaws.com/combat-aces/patton3.jpg"} ] 
  	},
  { name: 'The Desert Fox', year: 1951, classic: true,
  	description: 'the_desert_fox', 
    accuracy: 10,
    size: 1,
  images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/tdf1.jpg",
  		     				main: true} ] 
   },
  { name: 'The Longest Day', year: 1962, classic: true ,
  	description: 'the_longest_day', 
    accuracy: 9,
    size: 200,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/tld2.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/tld1.jpg"} ]
   },
  { name: 'To the Shores of Tripoli', year: 1942, classic: true,
  	description: 'tripoli', 
    accuracy: 1,
    size: 14,
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ttsot2.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/ttsot1.jpg"} ]
    },
  { name: 'Tora! Tora! Tora!', year: 1970, classic: true,
  	description: 'tora_tora_tora', 
    accuracy: 8,
   size: 75,
  	tagline: "The incredible attack on Pearl Harbor as told from both the American and Japanese sides.",
  	images_attributes: [{ url: "https://s3.amazonaws.com/combat-aces/ttt1.jpg",
  		     				main: true},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/ttt2.jpg"},
  		     				{ url: "https://s3.amazonaws.com/combat-aces/ttt3.jpg"} ]
    }
]

params.each do |param|
	Movie.create(param)

end


Quote.create!([
{saying: "Never in the field of human conflict has so much been owed by so many to so few!",
 author: "Winston Churchill"},
 {saying: "An army is a team. It lives, eats, sleeps, and fights as a team. This individual heroic stuff is pure horseshit",
 author: "George Patton"},
 {saying: "Courage is fear holding on a minute longer.",
 author: "George Patton"},
 {saying: "I'd rather have a German division in front of me, than a French one behind.",
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