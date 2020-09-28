# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Category.destroy_all
CollectionBoard.destroy_all
User.destroy_all

Item.reset_pk_sequence
User.reset_pk_sequence
CollectionBoard.reset_pk_sequence
Category.reset_pk_sequence




christy=User.create!(name: "Christy", username: "trops3")

recipe=Category.create!(name: "Autumn Recipes")
activity=Category.create!(name: "Halloween Fun")
craft=Category.create!(name: "Autumn Crafts")
costume=Category.create!(name: "Halloween Inspo")

temp=CollectionBoard.create!(name: "temporary collection", user_id: christy.id )


# t.string "name"
# t.string "image"
# t.string "url"
# t.string "description"
# t.string "location"
# t.bigint "category_id", null: false
# t.bigint "collection_board_id", null: false


Item.create(name: "Bane Haunted House", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231480/baneimage_srmljh.jpg ", url: "https://banehauntedhouse.com/", description: "Bane Haunted House was named “The Scariest Haunted House” by The Star-Ledger 5 years in a row and listed as one of the most terrifying in the nation by Buzzfeed. We play on every one of your fears; claustrophobic, separation anxiety, clowns, and more. This year Bane is even more interactive than ever with a brand new entrance and a terrifying exit! Get ready for the scare of your life!", location: "618 w 46th St New York", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "New York Haunted Hayride", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231743/hayride_co9gzc.jpg", url: '', description: "After 8 years of sending Los Angelenos into the woods for the most horrifying experience in town, the Haunted Hayride has become the most popular Halloween Attraction in the county and now, in its second year in NYC, all the stops are being pulled as this year’s attraction offers a higher octane horror experience of psychopathic fun than our inaugural year delivered, since we think New Yorkers can take it. Psychotic clowns, viscous demons and killers will be waiting around every turn to ruin you.", category_id: activity.id, collection_board_id: "")
Item.create!(name: "Adult Voodoo" , image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231968/download_1_oxznkw.png", url: 'https://www.spirithalloween.com/product/halloween-costumes/womens-costumes/womens-classic-costumes/adult-voodoo-poncho/pc/4742/c/1326/sc/708/217751.uts', description: 'Add some voodoo magic to your Halloween celebration this year by dressing up in this Adult Voodoo', location: '', category_id: costume.id, collection_board_id: "")
Item.create!(name: "Purple Witch", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601236677/download_2_mydxkc.png" ,url: 'https://www.spirithalloween.com/product/halloween-costumes/womens-costumes/womens-classic-costumes/adult-witch-costume-deluxe/pc/4742/c/1326/sc/708/216245.uts', description: 'Win Halloween with this classic costume done to perfection. Cast a spell in this cute purple witch costume ', location: ' ', category_id: costume.id, collection_board_id: " " )
Item.create!(name: "Paper Bat Garland", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231736/batgarland_bqy4yj.jpg", url: 'https://www.goodhousekeeping.com/holidays/halloween-ideas/g22062770/halloween-crafts-for-kids/?slide=2', description: 'Give your bedroom a holiday makeover by draping this paper garland over their door frame, windows, or shelves. T', location: '', category_id: craft.id, collection_board_id: " " )
Item.create!(name: "Spider Web Wreath", image:"https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231750/spiderwebwreath_q7quxb.jpg", url: 'https://www.goodhousekeeping.com/holidays/halloween-ideas/g22062770/halloween-crafts-for-kids/?slide=3', description: 'Dangle this paper wreath from a windowpane for an eerie look.', location: ' ', category_id: craft.id, collection_board_id: " ")
Item.create!(name: 'Pumpkin French Toast', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231740/frenchtoast_lmeflf.jpg", url: 'https://lifemadesimplebakes.com/pumpkin-french-toast-with-whipped-pumpkin-butter/', description: 'Sweet, Perfectly Spiced And Topped With A Swirl Of Homemade Whipped Pumpkin Butter – This Pumpkin French Toast Is The Perfect Fall Breakfast Recipe.', location: ' ', category_id: recipe.id, collection_board_id: "")
Item.create!(name: 'Autumn Harvest Punch', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231746/punch_hip0ot.jpg", url: 'https://www.fivespotgreenliving.com/autumn-harvest-punch-recipe/', description: 'This autumn harvest Thanksgiving punch uses lemonade and orange juice and REAL fruit! ', location: '', category_id: recipe.id, collection_board_id: "" )