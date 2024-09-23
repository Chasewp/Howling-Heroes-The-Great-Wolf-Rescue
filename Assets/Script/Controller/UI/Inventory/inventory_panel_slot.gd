extends Panel

@onready var backgroundSprite : Sprite2D = $Background
@onready var itemsspites : TextureRect = $Items
@onready var qty: Label = $Label

func update(slot : InventorySlot):
		if!slot.item:
			backgroundSprite.frame = 0
			itemsspites.visible = false
			qty.visible = false
		else:
			backgroundSprite.frame = 1
			itemsspites.visible = true
			itemsspites.texture = slot.item._texture
			
			if slot._quantity>=1:
				qty.visible = true
				qty.set_text(str(slot._quantity))
			else:
				qty.visible = false

