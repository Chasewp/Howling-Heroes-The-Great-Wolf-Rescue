extends Panel

@onready var backgroundSprite : Sprite2D = $Background
@onready var itemsSprite : Sprite2D = $Items
@onready var qty: Label = $Label

func update(item : InventoryItems):
		if!item:
			backgroundSprite.frame = 0
			itemsSprite.visible = false
			qty.visible = false
		else:
			backgroundSprite.frame = 1
			itemsSprite.visible = true
			itemsSprite.texture = item._texture
			qty.visible = true
			qty.set_text(str(item._quantity))
			

