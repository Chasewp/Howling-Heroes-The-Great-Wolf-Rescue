class_name Save_Progress_Player extends Resource


@export_category("Data")
@export var Name :String
@export var Health : int
@export var Armmor : int
@export var Biome_Location : String
@export var Wolves_Rescued : int
@export var Bos_Eliminated : int
@export var Enemy_Eliminated : int
#@export var Inventory
@export var Coordinate : Vector2
@export var checkpoint : int

func _init():
	Name = user.getter_name()
	Health = user._current_health
	Armmor = user.getter_Armor()
	Biome_Location = user.getter_location()
	#Coordinate = 

func Update_Coordinate(Value : Vector2):
	Coordinate = Value
