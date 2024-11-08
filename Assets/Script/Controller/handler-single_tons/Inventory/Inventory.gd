"""Singleton <AutoLoad> - Inventory Manager"""
#class_name Inventory
extends Node

#Inventory items
var inventory = []

#player node
var player_node : Node = null

#Inventory menu 
@onready var inventory_Slot = preload("res://Assets/Scences/UI/Inventory/Inventory_Slots.tscn")
#Update Inventory UI
signal inventory_updated

func _ready():
	inventory.resize(12)

func add_Item(item):
	for inv in range(inventory.size()):
		if inventory[inv] != null and inventory[inv]["type"] == item["type"] and inventory[inv]["effect"] == item["effect"]:
			inventory[inv]["quantity"] +=item["quantity"]
			inventory_updated.emit()
			print("Item added", inventory)
			return true
			
		elif inventory[inv] == null:
			inventory[inv] = item
			inventory_updated.emit()
			print("Item added", inventory)
			return true
		return false
func remove_Item(item_type,item_effect):
	for inv in range(inventory.size()):
		if inventory[inv] != null and inventory[inv]["type"] == item_type and inventory[inv]["effect"] == item_effect:
			inventory[inv]["quantity"] -=1
			inventory[inv]["quantity"] <=0
		inventory_updated.emit()
		return true
	return false
	
func increase_Inventory_Size():
	inventory_updated.emit()

func set_player_reference(player)-> void:
	player_node = player

func adjust_drop_positiion(position):
	var radius = 75
	var nearby_item = get_tree().get_nodes_in_group("Items")
	for item in nearby_item:
		if item.global_position.distance_to(position) < radius:
			var random_ofset = Vector2(randf_range(-radius, radius),randf_range(-radius, radius))
			position += random_ofset
			break
	return position
	
func drop_item(item_data,drop_position):
	var item_scence = load(item_data["scence_path"])
	var item_instance = item_scence.instantiate()
	item_instance.set_items_data(item_data)
	drop_position = adjust_drop_positiion(drop_position)
	get_tree().current_scene.add_child(item_instance)

	
