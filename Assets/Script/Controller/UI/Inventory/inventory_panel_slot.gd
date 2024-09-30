extends Panel

@onready var backgroundSprite : Sprite2D = $Background
@onready var itemssprites : TextureRect = $Items
@onready var qty: Label = $Label

func update(slot : InventorySlot):
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
			
			##if item._qty>=1:
			##	qty.visible = true
			##	qty.set_text(str(item._qty))
			##else:
				##qty.visible = false

