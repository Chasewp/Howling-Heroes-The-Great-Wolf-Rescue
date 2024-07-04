class_name save_Wolves
extends Node

const save_wolves = "user://Save/Wolves/Wolves.json"

var Data_Wolves = {
	#Index 0
	"Gray Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Gray Wolf/Gray-Wolf-Canis-lupus-in-the-Wild.jpg.webp",
		"Name_Wolf" : "Gray Wolf",
		"Species":"Canis lupus",
		"Height" : "66.04 cm - 81.28 cm",
		"Weight" : "23 - 80 kg",
		"Lenght" : "137.16 cm - 182.88 cm",
		"Conservation_status" : "Least Concern",
		"Location" : "Greenland, Alaska, Canada, Northern United States",
		"Morphology": "Long bushy tails that are often black-tipped. Their coat color is typically a mix of gray and brown with buffy facial markings and undersides, but the color can vary from solid white to brown or black",
		"Diets" : "Moose, Caribou, Bison"
	},
	
	#Index 1
	"Red Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Red Wolf/Large-Red-Wolf-Canis-rufus-in-Profile.jpg",
		"Name_Wolf" : "Red Wolf",
		"Species":"Canis rufus",
		"Height" : "66.04 cm",
		"Weight" : "23 kg - 39 kg",
		"Lenght" : "134.62 cm - 160.02 cm",
		"Conservation_status" : "Critically Endangered",
		"Location" : "Northeastern North Carolina",
		"Morphology": "Tawny or grayish coat complemented by light markings around the face",
		"Diets" : "Raccoons, nutria, white-tailed deer, and rabbits"
	},
	
	#Index 2
	"Mongolian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Mongolian Wolf/Mongolian-Wolf-Canis-lupus-chanco-in-Snowy-Forest.jpg",
		"Name_Wolf" : "Mongolian Wolf",
		"Species":"Canis lupus chanco",
		"Height" : "58.42 cm - 88.90 cm",
		"Weight" : "22 kg - 30 kg",
		"Lenght" : "106.68 cm",
		"Conservation_status" : "Near Threatened",
		"Location" : "Russia, China, and Korea",
		"Morphology": "Brownish-yellow, dull orange, or tawny coat with gray and black hairs scattered all over Pure white fur on the throat, chest, belly, and 	inside legs also complements the wolf’s beautiful coat.",
		"Diets" : "Saiga (a type of antelope) and livestock"
	},
	
	#Index 3
	"Himalayan Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Himalayan Wolf/Red-Himalayan-Wolf-Canis-lupus-chanco.jpg",
		"Name_Wolf" : "Himalayan Wolf",
		"Species":"Canis lupus chanco",
		"Height" : "76,20 cm",
		"Weight" : "35 kg",
		"Lenght" : "108,62 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Himalayas mountains, the Central Asian mountains, the Tibetan Plateau, and Ladakh, India.",
		"Morphology": "This Spesies has a thick, wooly coat for colder climates and tolerance to the low oxygen level at high elevations. One can identify the wolf by its yellowish-white fur on the limbs, face, and belly with dull earthy-brown hairs rooted on the back and tail.",
		"Diets" : "Tibetan gazelle,  smaller marmot and woolly hare"
	},
	
	#Index 4
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "res://Assets/Image/Wolves/Steppe Wolf (Caspian Sea Wolf)/Steppe-Wolf-Canis-lupus-campestris-or-Caspian-Sea-Wolf-in-the-Wild.jpg",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.12 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "121.92 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 5
	"Tundra Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Tundra Wolf/Tundra-Wolf-Canis-lupus-albus-in-Winter.jpg",
		"Name_Wolf" : "Tundra Wolf",
		"Species":"Canis lupus albus",
		"Height" : "71.12 cm - 96.52 cm",
		"Weight" : "36.6 kg - 49 kg",
		"Lenght" : "116,84 cm - 137.16 cm",
		"Conservation_status" : "Near Threatened",
		"Location" : "River valleys, thickets, and forest clearings.",
		"Morphology": "Light gray, fluffy, long, dense, and soft coat differentiates it from its counterparts.",
		"Diets" : "Small rodents, hares, reindeer, arctic foxes, and birds."
	},

	#Index 6
	"Arctic Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Artic Wolf/Arctic-Wolf-in-Winter-Standing-on-Snow.jpg.webp",
		"Name_Wolf" : "Arctic-Wolf",
		"Species":"Canis lupus arctos",
		"Height" : "91.44 cm",
		"Weight" : "34 kg - 46 kg",
		"Lenght" : "96.52 cm - 177.80 cm",
		"Conservation_status" : "Least Concern",
		"Location" : "Canada’s high arctic tundras, inhabiting the northern treeline, the glacier regions of Alaska, Greenland, and Iceland",
		"Morphology": "Their coat is long and silky with soft, thick under fur. The feet 	are large and digitate with non-retractable claws. The forefeet have five toes and the hind feet have four. Ears are slightly rounded and the face is less pointed than other Spesies of wolf. The year-round white coats and slightly shorter ears and noses distinguish them from the other subSpesies of Canis lupus.",
		"Diets" : "Arctic hares, muskoxen, and caribou"
	},
	
	#Index 7
   	"Northern Rocky Mountain Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Northern Rocky Mountain Wolf/Northern-Rocky-Mountain-Wolf-Canis-lupus-irremotus.jpg",
		"Name_Wolf" : "Northern Rocky Mountain Wolf",
		"Species":"Canis lupus irremotus",
		"Height" : "66.04 cm - 81.28 cm",
		"Weight" : "32 kg - 68 kg",
		"Lenght" : "Unknown",
		"Conservation_status" : "Apparently Secure",
		"Location" : "Most of Idaho and western Montana and Wyoming ",
		"Morphology": "Broad snout, round ears, and a coat varying in color from black to White ",
		"Diets" : "Elk, mule deer, beaver, and bison, common animals within the North American range."
	},
	

	#Index 8
	"Eurasian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Eurasian Wolf/Eurasian-Wolves-Canis-lupus-lupus-in-Natural-Habitat.jpg",
		"Name_Wolf" : "Eurasian Wolf",
		"Species":"Canis lupus lupus",
		"Height" : "78.74 cm - 83.82 cm",
		"Weight" : "69 kg - 80 kg",
		"Lenght" : "104.14 cm - 160.02 cm",
		"Conservation_status" : "Least Concern",
		"Location" : "Asia and Europe.",
		"Morphology": "It has a coarser and thinner coat than that of other gray wolves, and it can range from white to black, including cream, red, gray, and brown",
		"Diets" : "Moose, wild boar, red deer, and roe deer, but saiga, reindeer, fallow deer, wild goats, and musk deer"
	},

	#Index 9
	"Interior Alaskan Wolf (Yukon Wolf)" :{
		"Image" : "res://Assets/Image/Wolves/Interior Alaskan Wolf (Yukon Wolf)/Interior-Alaskan-Wolf-or-Yukon-Wolf-Canis-lupus-pambasileus.jpg",
		"Name_Wolf" : "Interior Alaskan Wolf (Yukon Wolf)",
		"Species":"Canis lupus pambasileus",
		"Height" : "83.82 cm",
		"Weight" : "32 kg - 60 kg",
		"Lenght" : "149.86 cm - 195.58 cm",
		"Conservation_status" : "Least Concern",
		"Location" : "Endemic to the arctic regions of Alaska, and Canada, including the Yukon, British Columbia, and the Northwest Territories.",
		"Morphology": "Awny gray or tan-coated, large-sized wolves inhabit boreal forests, alpine, subalpine, and Arctic tundras, primarily differing from the Eurasian and northwestern wolf with a larger head, thicker muzzle, and robustness.",
		"Diets" : "Boreal woodland, barren-ground caribou, moose, and Dall sheep."
	},

	#Index 10
	"Northwestern Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Northwestern Wolf/Northwestern-Wolves-Canis-lupus-chanco-in-Winter.jpg",
		"Name_Wolf" : "Northwestern Wolf",
		"Species":"Canis lupus occidentalis",
		"Height" : "66.04 cm - 91.44 cm",
		"Weight" : "45 kg - 72 kg",
		"Lenght" : "152.40 cm - 213.36 cm",
		"Conservation_status" : "Apparently Secure",
		"Location" : "Northwest United States, Alaska, and the upper Mackenzie River Valley, extending to the western Canadian provinces.",
		"Morphology": "Black, white, gray, or yellowish, even within the same litter",
		"Diets" : "Bison and elk."
	},
	#Index 11
		"Arabian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Arabian Wolf/Close-View-of-Arabian-Wolf-in-Jordan.jpeg",
		"Name_Wolf" : "Arabian Wolf",
		"Species":"Canis lupus arabs",
		"Height" : "63.50 cm - 66.04 cm",
		"Weight" : "20.41 kg",
		"Lenght" : "213.36 cm",
		"Conservation_status" : "Critically Endangered",
		"Location" : "Western and southern Iraq, Saudi Arabia, Jordan, Yemen, southern Israel, some parts of Egypt’s Sinai Peninsula, and Oman.",
		"Morphology": "Their coat hairs are thin, short, wiry, and light in colour, varying from light brown through to a greyish yellow, with the stomach being paler or white. The hair on the back remains long, which is thought to be an adaption against solar radiation. In winter their coats are thicker and longer, but not as long as its northern subSpesies",
		"Diets" : "Gazelle, deer, wild boar, mountain sheep and livestock"
	},
	
	#Index 12
		"Indian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Indian Wolf/oertdrvs.png",
		"Name_Wolf" : "Indian Wolf",
		"Species":"Canis lupus pallipes",
		"Height" : "55.88 cm - 71.12 cm",
		"Weight" : "17 kg - 25 kg",
		"Lenght" : "101.6 cm - 144.78 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Indian wolves are found in India, Pakistan, Afghanistan, Nepal, Bhutan, Israel, Turkey, Iran, and Syria. They live in open grasslands, thorn forests, and scrublands",
		"Morphology": "Uniquely coated in reddish-gray and white, with the upper body covered in the earlier color and the belly and legs in white markings.",
		"Diets" : "Antelopes, rodents, hares, and raccoons"
	},

	#Index 13
	  	"Mexican Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Mexican Wolf/DSC_6312.png",
		"Name_Wolf" : "Mexican Wolf",
		"Species":"Canis lupus baileyi",
		"Height" : "71.12 cm - 81.28 cm",
		"Weight" : "22 kg - 36 kg",
		"Lenght" : "167.54",
		"Conservation_status" : "Critically Imperiled",
		"Location" : "Southwestern Texas, southern New Mexico, southeastern Arizona, and as far south as central Mexico",
		"Morphology": "Yellowish-gray pelt overcast with black on the back and tail and a smaller, narrower skull that differentiates it from the Great Plains wolf, an infamous subSpesies among native Americans",
		"Diets" : "Elk, mule and white-tailed deer, pronghorn, javelina, rabbits, and other small mammals"
	},

	#Index 14
		"British Columbian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/British Columbian Wolf/canis-lupus-columbianus.jpg",
		"Name_Wolf" : "British Columbian Wolf",
		"Species":"Canis lupus columbianus",
		"Height" : "Unknown",
		"Weight" : "36 kg - 68 kg",
		"Lenght" : "152.40",
		"Conservation_status" : "Apparently Secure",
		"Location" : "Vancouver Island, British Columbia, Yukon, and southeast Alaska.",
		"Morphology": "Lighter-colored coats, unlike the British Columbian wolf’s long coats, usually black and often mixed with brown or grey.",
		"Diets" : "Rodents and ungulates, including hares, elk, deer, caribou, and moose."
	},

	#Index 15
		"Vancouver Coastal Island Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Vancouver Coastal Island Wolf/Wolf_Coast.jpg",
		"Name_Wolf" : "Vancouver Coastal Island Wolf",
		"Species":"Canis lupus crassodon",
		"Height" : "66.04 cm - 81.28 cm",
		"Weight" : "27 kg",
		"Lenght" : "121.92 cm - 152.40 cm",
		"Conservation_status" : "Least Conscern",
		"Location" : "Northern Vancouver Island, north of Campbell River and along the west coast of the Island down to Ucluelet",
		"Morphology": "Mix of brown, grey, and black.",
		"Diets" : "Fish and relatively small deer."
	},

	#Index 16
		"Hudson Bay Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Hudson Bay Wolf/1280px-Canis.lupus.occidentalis-ZOO.Olomouc3.jpg",
		"Name_Wolf" : "Hudson Bay Wolf",
		"Species":"Canis lupus hudsonicus",
		"Height" : "71.12 cm - 88.90 cm",
		"Weight" : "38 kg - 70 kg",
		"Lenght" : "119.38 cm - 149.86 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Canada, west of the Hudson Bay from Northern Manitoba through the Northwest Territories and above",
		"Morphology": "White colored, medium-sized subSpesies similar to C. l. arctos, but with a flatter skull",
		"Diets" : "Elk and Caribou"
	},

	#Index 17
		"Alexander Archipelago Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Alexander Archipelago Wolf/Alexander Archipelago Wolf.webp",
		"Name_Wolf" : "Alexander Archipelago Wolf",
		"Species":"Canis lupus ligoni",
		"Height" : "60.96 cm",
		"Weight" : "14 kg - 23 kg",
		"Lenght" : "106.68 cm",
		"Conservation_status" : "Vulnerable",
		"Location" : "South-eastern Alaska",
		"Morphology": "While arctic animals tend to be lighter colored, the Alexander Archipelago wolf majestically rocks its darkly-colored coat",
		"Diets" : "Sitka black-tailed deer, beaver, mountain goat, and moose"
	},

	#Index 18
		"Eastern Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Eastern Wolf/Eastern-Wolf-Hunting-in-the-Wild.jpg",
		"Name_Wolf" : "Canis lupus lycaon",
		"Species":"Canis lupus lycaon",
		"Height" : "63.5 cm - 68.58 cm",
		"Weight" : "24 kg - 30 kg",
		"Lenght" : "167.24 cm",
		"Conservation_status" : "Imperiled",
		"Location" : "Canadian provinces Ontario and Quebec, North America’s eastern coasts",
		"Morphology": "Grayish-brown coat complemented by cinnamon, rufous or creamy flank and chest, and a mix of black and gray fur on the shoulders, nape, and tail region",
		"Diets" : "Beavers and white-tailed deer, blueberries"
	},

	#Index 19
		"Mackenzie River Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Mackenzie River Wolf/1280px-Loup_du_Canada_(Canis_lupus_mackenzii).jpg",
		"Name_Wolf" : "Mackenzie River Wolf",
		"Species":"Canis lupus mackenzii",
		"Height" : "81.28 cm - 101.6 cm",
		"Weight" : "46 kg - 62 kg",
		"Lenght" : "152,40 cm - 213,36 cm",
		"Conservation_status" : "Secure",
		"Location" : "Southern region of the Northwest Territories",
		"Morphology": "Thick, long limbs. Its deep chest allows it to breathe more efficiently at higher altitudes. The wolf maximizes heat retention through its bushy tail during the winter and sheds its undercoat during the summer",
		"Diets" : "Mountain goats, Dall sheep, snowshoe hares, lemmings, and fish like salmon"
	},

	#Index 20
	"Baffin Island Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Baffin Island Wolf/Dogs,_jackals,_wolves,_and_foxes_(Plate_IV)_C._l._manningi_mod.jpg",
		"Name_Wolf" : "Baffin Island Wolf",
		"Species":"Canis lupus manningi",
		"Height" : "60.96 cm - 106.68 cm",
		"Weight" : "13.6 kg - 22.70 kg",
		"Lenght" : "106.68 cm",
		"Conservation_status" : "Secure",
		"Location" : "Baffin Island and several nearby islands",
		"Morphology": "light or white-colored fur turfs",
		"Diets" : "Arctic hares, lemmings, and barren-ground caribou"
	},

	#Index 21
		"Greenland Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Greenland Wolf/canis-lupus-orion_64c64b38-c6b2-4929-9c2d-6e189c37bbab.jpg",
		"Name_Wolf" : "Greenland Wolf",
		"Species":"Canis lupus orion",
		"Height" : "Unknown",
		"Weight" : "26 kg",
		"Lenght" : "154.53 cm",
		"Conservation_status" : "Unknown",
		"Location" : "Polar regions, including Greenland",
		"Morphology": "Similar in look to their arctic counterparts, mostly white-pelted.",
		"Diets" : "Seals to muskox"
	},

	#Index 22
		"Alaskan Tundra Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Alaskan Tundra Wolf/Canis_lupus_tundrarum_Lobo_Park.jpg",
		"Name_Wolf" : "Alaskan Tundra Wolf",
		"Species":"Canis lupus tundrarum",
		"Height" : "66.04 cm - 96.52 cm",
		"Weight" : "38.5 kg - 80 kg",
		"Lenght" : "127 cm - 160.02 cm",
		"Conservation_status" : "Apparently Secure ",
		"Location" : "Icy American state, Hudson Bay, Alaska’s tundra, taiga near the Arctic coast, and boreal forests",
		"Morphology": "Mostly white-colored, like many arctic subSpesies, and are identical cousins to the Great Plains wolf in skull and tooth Morfologi and the Interior Alaskan wolf. However, their narrower rostrum and palate and whiter coat differentiate them from both.",
		"Diets" : "Moose, caribou, muskoxen, and bison"
	},

	#Index 23
	"Labrador Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Labrador Wolf/hl9mpkuo.png",
		"Name_Wolf" : "Labrador Wolf",
		"Species":"Canis lupus labradorius",
		"Height" : "Unknown",
		"Weight" : "27 kg - 32 kg",
		"Lenght" : "132.08 cm - 187.96 cm",
		"Conservation_status" : "Vulnerable",
		"Location" : "Labrador and northern Quebec",
		"Morphology": "Dark grizzly-gray or nearly white coat",
		"Diets" : "White-tailed deer and caribou"
	},

	#Index 24
	"Iberian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Iberian Wolf/1280px-Iberian_Wolf_AdF_001.jpg",
		"Name_Wolf" : "Iberian Wolf",
		"Species":"Canis lupus signatus",
		"Height" : "68.58 cm - 78.74 cm",
		"Weight" : "25 kg - 55 kg",
		"Lenght" : "139.70 cm - 180.34 cm",
		"Conservation_status" : "Vulnerable",
		"Location" : "Northwestern Iberian Peninsula in northern Portugal and northwestern Spain, feeling at home in this range’s forests and mountain ecosystems",
		"Morphology": "Slighter frame, with white and dark marks on specific parts",
		"Diets" : "Red deer, roe deer, ibexes, rabbits, and fish"
	},

	#Index 25
	"Italian Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Italian Wolf/C._l._italicus_in_MNP.jpg",
		"Name_Wolf" : "Italian Wolf",
		"Species":"Canis lupus italicus",
		"Height" : "50.80 cm - 71.12 cm",
		"Weight" : "25 kg - 45 kg",
		"Lenght" : "106.68 cm - 144.78 cm",
		"Conservation_status" : "Vulnerable",
		"Location" : "Apennine Mountains and the Western Alps",
		"Morphology": "Grey-fulvous pelt that reddens in summer. Lighter-colored belly and cheeks, dark bands on the back and tail tip, and occasionally along the forelimbs complement the colorful coat",
		"Diets" : "	Chamois, Roe Deer, Red Deer and Wild Boar"
	},

	#Index 26
		"Great Plains Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Greenland Wolf/canis-lupus-orion_64c64b38-c6b2-4929-9c2d-6e189c37bbab.jpg",
		"Name_Wolf" : "Great Plains Wolf",
		"Species":"Canis lupus nubilus",
		"Height" : "Unknown",
		"Weight" : "45 kg",
		"Lenght" : "139.70 cm - 195.58 cm",
		"Conservation_status" : "Unknown",
		"Location" : "American states of Michigan, Minnesota, and Wisconsin",
		"Morphology": "Mostly lightly colored, white and black variants still appear within individuals",
		"Diets" : "Moose, white-tailed deer, beaver, snowshoe hare, smaller mammals, and birds"
	},

}

func save_wolves_data():
	var wolf_data_save = FileAccess.open_encrypted_with_pass(save_wolves,FileAccess.WRITE,"Blizzard_WP403")
	wolf_data_save.close()
	

func load_wolves_data():
	var wolf_data_load = FileAccess.open_encrypted_with_pass(save_wolves,FileAccess.READ,"Blizzard_WP403")
