"""Singleton <AutoLoad> - Inventory Manager"""
#class_name Inventory
extends Node

#Inventory items
var inventory = []

#player node
var player_node : Node = null 
#Update Inventory UI
signal inventory_updated

func _ready():
	inventory.resize(12)

func add_Item():
	inventory_updated.emit()
	
func remove_Item():
	inventory_updated.emit()
	
func increase_Inventory_Size():
	inventory_updated.emit()

func set_player_reference(player)-> void:
	player_node = player
