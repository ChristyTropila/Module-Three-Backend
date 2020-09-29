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

# Item.create!(name: "", image: '', url: '', description: '', location: '', category_id: '', collection_board_id: '')

Item.create!(name: "The Great Jack O'Lantern Blaze", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601327631/image_zfmy4j.jpg", url: "https://hudsonvalley.org/events/blaze/", description: "Witness an army of more than 7,000 glowing, intricately carved pumpkins shining along the riverside near Van Cortlandt Manor. ", location: "525 S Riverside Ave, Croton-On-Hudson, NY", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "Nightmare NYC", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601326538/blindfolded-150x150_it4k7n.jpg", url: "https://nightmarenyc.com", description: "I CAN'T SEE is an incredibly unique new immeersive theater horror experience from Psycho Clan that takes place in the dark.", location: "133 Greenwich St, New York, NY 10006", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "Blood Manor", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601326553/bloodmanor_awvbfy.jpg ", url: "http://www.bloodmanor.com/", description: "BLOOD MANOR IS A FIRST CLASS HAUNTED HOUSE ATTRACTION comprised of approximately 10,000 square feet of themed rooms, corridors, and a labyrinth of passageways designed to to maximize ones fears.", location: "359 Broadway New York, NY. 10013", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "Bane Haunted House", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231480/baneimage_srmljh.jpg ", url: "https://banehauntedhouse.com/", description: "Bane Haunted House was named “The Scariest Haunted House” by The Star-Ledger 5 years in a row and listed as one of the most terrifying in the nation by Buzzfeed. We play on every one of your fears; claustrophobic, separation anxiety, clowns, and more. This year Bane is even more interactive than ever with a brand new entrance and a terrifying exit! Get ready for the scare of your life!", location: "618 w 46th St New York", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "New York Haunted Hayride", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231743/hayride_co9gzc.jpg", url: '', description: "After 8 years of sending Los Angelenos into the woods for the most horrifying experience in town, the Haunted Hayride has become the most popular Halloween Attraction in the county and now, in its second year in NYC, all the stops are being pulled as this year’s attraction offers a higher octane horror experience of psychopathic fun than our inaugural year delivered, since we think New Yorkers can take it. Psychotic clowns, viscous demons and killers will be waiting around every turn to ruin you.", category_id: activity.id, collection_board_id: "")
Item.create!(name: "Love Apple Farm", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601327948/applefarm_pr5wmf.png", url: "https://loveapplefarm.com/", description: " Love Apple Farm has it all: apple cider donuts, a farm animal petting zoo, an art exhibition, and (of course) apple picking. Plus, you can't beat the 99 cent per pound deal on your apple bags.", location: "1421 State Route 9H, Ghent, NY 12075", category_id: activity.id, collection_board_id: " ")
Item.create!(name: "A Haunting in Hollis", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601326568/hollishaunting_vhedtn.jpg", url: "https://www.eventbrite.com/e/a-haunting-in-hollis-tickets-121332949117", description: "We dare you to enter the Haunted House in Hollis where you're sure to have an eerie fright you wont forget. As goblins & ghouls and hungry zombies try to get a piece of you, make your way through this horrific maze and into the experimental labs where zombies chase you and all things go wrong. ", location: "211-17 Hollis Avenue Queens Village, NY 11429", category_id: activity.id, collection_board_id: " ")

Item.create!(name: "Adult Voodoo" , image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231968/download_1_oxznkw.png", url: 'https://www.spirithalloween.com/product/halloween-costumes/womens-costumes/womens-classic-costumes/adult-voodoo-poncho/pc/4742/c/1326/sc/708/217751.uts', description: 'Add some voodoo magic to your Halloween celebration this year by dressing up in this Adult Voodoo', location: '', category_id: costume.id, collection_board_id: "")
Item.create!(name: "Purple Witch", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601236677/download_2_mydxkc.png" ,url: 'https://www.spirithalloween.com/product/halloween-costumes/womens-costumes/womens-classic-costumes/adult-witch-costume-deluxe/pc/4742/c/1326/sc/708/216245.uts', description: 'Win Halloween with this classic costume done to perfection. Cast a spell in this cute purple witch costume ', location: ' ', category_id: costume.id, collection_board_id: " " )
Item.create!(name: "Paper Bat Garland", image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231736/batgarland_bqy4yj.jpg", url: 'https://www.goodhousekeeping.com/holidays/halloween-ideas/g22062770/halloween-crafts-for-kids/?slide=2', description: 'Give your bedroom a holiday makeover by draping this paper garland over their door frame, windows, or shelves. T', location: '', category_id: craft.id, collection_board_id: " " )
Item.create!(name: "Spider Web Wreath", image:"https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231750/spiderwebwreath_q7quxb.jpg", url: 'https://www.goodhousekeeping.com/holidays/halloween-ideas/g22062770/halloween-crafts-for-kids/?slide=3', description: 'Dangle this paper wreath from a windowpane for an eerie look.', location: ' ', category_id: craft.id, collection_board_id: " ")
Item.create!(name: 'Pumpkin French Toast', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231740/frenchtoast_lmeflf.jpg", url: 'https://lifemadesimplebakes.com/pumpkin-french-toast-with-whipped-pumpkin-butter/', description: 'Sweet, Perfectly Spiced And Topped With A Swirl Of Homemade Whipped Pumpkin Butter – This Pumpkin French Toast Is The Perfect Fall Breakfast Recipe.', location: ' ', category_id: recipe.id, collection_board_id: "")
Item.create!(name: 'Autumn Harvest Punch', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601231746/punch_hip0ot.jpg", url: 'https://www.fivespotgreenliving.com/autumn-harvest-punch-recipe/', description: 'This autumn harvest Thanksgiving punch uses lemonade and orange juice and REAL fruit! ', location: '', category_id: recipe.id, collection_board_id: "" )
Item.create!(name: 'Cranberry Rosemary Chicken', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601328375/cranberry-rosemary-chicken-paleo-10_twpios.jpg", url: 'https://40aprons.com/cranberry-rosemary-one-pan-chicken/', description: 'You’ll fall in love with how the tart cranberries marry the heady rosemary, grounded with a white wine sauce,', location: ' ', category_id: recipe.id, collection_board_id: "")
Item.create!(name: "Pumpkin-Cream-Coldbrew", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601328695/Starbuck-Pumpkin-Cream-Cold-Brew-Copycat-Recipe-7-of-7_eipsgn.jpg', url: 'https://www.foxandbriar.com/pumpkin-cream-cold-brew-recipe/', description: 'You won’t believe how easy this DIY Pumpkin Cream Cold Brew Recipe is to make.  It only takes 6 ingredients and 5 minutes!', location: '', category_id: recipe.id , collection_board_id: '')
Item.create!(name: "Baked Apples With Sausage Stuffing", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601328860/Baked-Apples-with-Sausage-Stuffing_eeohd6.jpg', url: 'http://growingupgabel.com/baked-apples-sausage-stuffing-recipe/', description: 'They are perfect for a weeknight dinner of baked chicken or on your Thanksgiving table', location: '', category_id: recipe.id, collection_board_id: '')
Item.create!(name: 'Creamy Butternut Squash Spaghetti', image: "https://res.cloudinary.com/dm3tfsraw/image/upload/v1601328132/15692462335d88cc1a032cf_nt0ops.jpg", url: 'https://thefeedfeed.com/jakecohen/creamy-butternut-squash-spaghetti', description: ' This pasta that’s as fall-heavy as they come. I’m talking creamy butternut squash puree matched with sharp cheddar, warm sage and sweet apple for a velvety sauce to coat spaghetti', location: ' ', category_id: recipe.id, collection_board_id: "")

Item.create!(name: "Bat Branch Centerpiece", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601328992/diy-halloween-centerpiece-2-600x899.jpg_xlkhoi.webp', url: 'https://thesweetestoccasion.com/2016/10/diy-halloween-centerpiece/', description: ' Halloween centerpiece that most closely resembles a plume of bats flying out of a bunch of branches. It’s a quick, easy craft that anyone can make in 20 minutes or less.', location: '', category_id: craft.id, collection_board_id: '')
Item.create!(name: "Halloween Mason Jars", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601329139/Ghost-In-A-Jar-Halloween-Craft-from-Landeelu_vbkyqh.jpg', url: 'https://bloggingwithconnie.com/halloween-mason-jar-decor-ideas/', description: 'Halloween Mason Jar Inspo!', location: '', category_id: craft.id, collection_board_id: '')
Item.create!(name: "Chucky Costume", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601329311/_pdp_sq__w5piuf.webp', url: 'https://www.partycity.com/chucky-customizable-costume-for-men---childs-play-K255003.html?cgid=mens-costumes', description: 'Play twisted games this Halloween Chucky from Childs Play. ', location: '', category_id:costume.id, collection_board_id: '')
Item.create!(name: "Adult Exotic Tiger Lover", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601329632/_pdp_sq__2_pslbxc.webp', url: 'https://www.partycity.com/adult-exotic-tiger-lover-accessory-kit-909513.html?cgid=mens-costumes-funny', description: 'Suit up in true exotic style with this all-inclusive accessory set. It includes the brow rings, faux earrings, choker, and self-adhesive moustache needed to nail the look', location: '', category_id: costume.id, collection_board_id: '')
Item.create!(name: "Pillsbury Doughboy", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601329407/pill_v8el7m.jpg', url: 'https://www.partycity.com/adult-inflatable-pillsbury-doughboy-costume-P889810.html?dwvar_P889810_size=Standard%20Size&cgid=mens-costumes', description: 'Youre the softest, giggliest cutie in the costume contest in an Inflatable Pillsbury Doughboy Costume for adults', location: '', category_id: costume.id, collection_board_id: '')
Item.create!(name: "Pennywise", image: 'https://res.cloudinary.com/dm3tfsraw/image/upload/v1601329530/_pdp_sq__1_dmzqvi.webp', url: 'https://www.partycity.com/mens-costumes?infinitescroll=true', description: 'Give all your friends a scare this year with this realistic Pennywise costume', location: '', category_id: costume.id, collection_board_id: '')

