extends Panel

@onready var backgroundSprite : Sprite2D = $Background
@onready var itemsspites : TextureRect = $Items
@onready var qty: Label = $Label

func update(item : InventoryItems):
		if!item:
			backgroundSprite.frame = 0
			itemsspites.visible = false
			qty.visible = false
		else:
			backgroundSprite.frame = 1
			itemsspites.visible = true
			itemsspites.texture = item._texture
			
			if item._qty>=1:
				qty.visible = true
				qty.set_text(str(item._qty))
			else:
				qty.visible = false

