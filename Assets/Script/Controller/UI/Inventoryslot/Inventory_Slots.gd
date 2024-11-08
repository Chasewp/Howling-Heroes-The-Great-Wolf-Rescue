extends Control

"Cursor"
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

@onready var icon = $Icon
@onready var item_Name_Label = $DetailPanel/Item_Name
@onready var item_Quantity_Label = $Item_Quantity
@onready var item_Effect_Label = $DetailPanel/Item_Effect
@onready var details_Panel = $DetailPanel
@onready var usage_Panel = $"Usage UI"

#slot items
var item = null

func _on_item_button_mouse_entered():
	Input.set_custom_mouse_cursor(hand_cursor)
	if item !=null:	
		usage_Panel.visible != false
		details_Panel.visible = true 

func _on_item_button_mouse_exited():
	Input.set_custom_mouse_cursor(normal_cursor)
	details_Panel.visible = false
func _on_item_button_pressed():
	if item !=null:	
		usage_Panel.visible != usage_Panel.visible

func set_empty():
	icon.texture = null
	item_Quantity_Label.text = ""

func set_items(new_item):
	item = new_item
	icon.texture = new_item["texture"]
	item_Quantity_Label.text = str(new_item["quantity"])
	if item["effect"] != "":
		item_Effect_Label.text = str("+ ",item["effect"])
	else:
		item_Effect_Label.text = ""

func _on_drop_button_pressed():
	if item!=null:
		var drop_position = Inventory_Global.player_node.global_positon
		var drop_ofset = Vector2(0,35)
		drop_ofset = drop_ofset.rotated(Inventory_Global.player_node.rotation)
		Inventory_Global.drop_item(item,drop_position + drop_ofset)
		Inventory_Global.remove_item(item["type"],item["effect"])
		usage_Panel.visible = false
