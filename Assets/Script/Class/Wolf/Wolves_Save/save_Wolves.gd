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
		"Image" : "Assets\Image\Wolves\Hudson Bay Wolf\1280px-Canis.lupus.occidentalis-ZOO.Olomouc3.jpg",
		"Name_Wolf" : "Hudson Bay Wolf",
		"Species":"Canis lupus hudsonicus",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 17
			   	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 18
				  	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 19
						"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 20
			 	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 21
					"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 22
						"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 23
					 	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 24
					 	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 25
					 	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

	#Index 26
					 	"" :{
		"Image" : "",
		"Name_Wolf" : "",
		"Species":"",
		"Height" : "",
		"Weight" : "",
		"Lenght" : "",
		"Conservation_status" : "",
		"Location" : "",
		"Morphology": "",
		"Diets" : ""
	},

}
