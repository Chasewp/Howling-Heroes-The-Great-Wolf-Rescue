extends Panel

@onready var backgroundSprite : Sprite2D = $Background
@onready var itemssprites : TextureRect = $Items
@onready var qty: Label = $Label

func update_inventory_items(slot : InventorySlot):
	if!slot.item:
		backgroundSprite.frame = 0
		itemssprites.visible = false
		qty.visible = false
	else:
		backgroundSprite.frame = 1
		itemssprites.visible = true
		itemssprites.texture = slot.item._texture
		qty.visible = true
		qty.text = str(slot._quantity)
