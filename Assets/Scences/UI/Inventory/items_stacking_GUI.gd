class_name  ItemStackGui
extends Panel

@onready var itemssprites : TextureRect = $Items
@onready var qty: Label = $Label

#var inventorySlot:InventorySlot

func update():
	if !inventorySlot || inventorySlot.item:return
	
	itemssprites.visible = true
	itemssprites.texture = inventorySlot.item._texture
	
	if inventorySlot._quantity > 1:
			qty.visible = true
			qty.text = str(inventorySlot._quantity)
	else:
			qty.visible = false
			
