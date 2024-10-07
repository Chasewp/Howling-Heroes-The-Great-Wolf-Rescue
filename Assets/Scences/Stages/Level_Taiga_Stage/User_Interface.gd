extends CanvasLayer

@onready var mission = $Mission
@onready var inventory = $Inventory_UI

func _input(event):
	if event.is_action_pressed("open_inventory"):
		if inventory.is_Open:
			inventory.close()
		else:
			inventory.open()

func _ready():
	inventory.close()
