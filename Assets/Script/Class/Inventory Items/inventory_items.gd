@tool
extends Node2D

@export var item_type = ""
@export var item_name = ""
@export var item_texture : Texture
@export var item_effect = ""

var player_in_range = false

var scence_path:String = "res://Assets/Scences/UI/Inventory/inventory_items.tscn"

@onready var icon_sprite = %Sprite2D

func _ready():
	if not Engine.is_editor_hint():
		icon_sprite.texture = item_texture

func _process(delta):
	if Engine.is_editor_hint():
		icon_sprite.texture = item_texture
	
	if player_in_range	and Input.is_action_just_pressed("interact"):
			pickup_item()
			
func pickup_item():
	var item = {
		"quantity":1,
		"type" : item_type,
		"name": item_name,
		"effect" : item_effect,
		"texture": item_texture,
		"scence_path":scence_path
	}

	if Inventory_Global.player_node:
		Inventory_Global.add_Item(item)
		self.queue_free()


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		player_in_range = true
		body.interact_ui.visible= true

func _on_area_2d_body_exited(body):
	if body.is_in_group("player"):
		player_in_range = false
		body.interact_ui.visible= false
		
func set_item_data(data):
	item_type = data["type"]
	item_name = data["name"]
	item_effect = data["effect"]
	item_texture = data["texture"]
