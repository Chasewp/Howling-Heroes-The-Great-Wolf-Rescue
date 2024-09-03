extends CanvasLayer

@onready var inventory_menu = $Inventory_UI

func _ready():
	inventory_menu.close()
	
func _input(event):
	if event.is_action_pressed("open_inventory"):
		if inventory_menu._isOpen:
			inventory_menu.close()
		else:
			inventory_menu.open()
