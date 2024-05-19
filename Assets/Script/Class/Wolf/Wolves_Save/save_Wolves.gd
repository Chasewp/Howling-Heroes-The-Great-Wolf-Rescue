class_name save_Wolves
extends Node

const save_wolves = "user://Save/Wolves/Wolves.json"

var Data_Wolves = {
	#Index 0
	"Gray Wolf" :{
		"Image" : "res://Assets/Image/Wolves/Gray Wolf/Gray-Wolf-Canis-lupus-in-the-Wild.jpg.webp",
		"Name_Wolf" : "Gray Wolf",
		"Species":"Canis lupus",
		"Height" : "66 cm - 81.24 cm",
		"Weight" : "23 - 80 kg",
		"Lenght" : "137.24 cm - 183 cm",
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
		"Height" : "65 cm",
		"Weight" : "23 - 39 kg",
		"Lenght" : "134.70 cm - 159.62 cm",
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
		"Height" : "58.42 cm - 88.86 cm",
		"Weight" : "22 - 30 kg",
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
		"Height" : "76,16 cm",
		"Weight" : "35 kg",
		"Lenght" : "109,22 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Himalayas mountains, the Central Asian mountains, the Tibetan Plateau, and Ladakh, India.",
		"Morphology": "This Spesies has a thick, wooly coat for colder climates and tolerance to the low oxygen level at high elevations. One can identify the wolf by its yellowish-white fur on the limbs, face, and belly with dull earthy-brown hairs rooted on the back and tail.",
		"Diets" : "Tibetan gazelle,  smaller marmot and woolly hare"
	},
	
	#Index 4
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 5
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},
	
	#Index 6
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 7
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 8
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 9
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 10
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 11
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 12
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 13
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 14
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 15
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 16
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 17
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 18
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 19
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 20
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 21
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 22
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 23
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 24
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 25
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},

	#Index 26
	"Steppe Wolf (Caspian Sea Wolf)" :{
		"Image" : "",
		"Name_Wolf" : "Steppe Wolf (Caspian Sea Wolf)",
		"Species":"Canis lupus campestris",
		"Height" : "71.08 cm",
		"Weight" : "35-40 kg",
		"Lenght" : "122 cm",
		"Conservation_status" : "Endangered",
		"Location" : "Unforested grasslands in south-eastern Europe, Middle Asia, and Kazakhstan.",
		"Morphology": "Distinctive mix of light gray, rusty gray, brown, and black hairs scattered across their flanks and backs.",
		"Diets" : "Rodents, and fish. When food is scarce, it may also eat berries and other fruits."
	},
}
