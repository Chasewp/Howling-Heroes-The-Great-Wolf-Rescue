class_name collectable_ites_class
extends Area2D

@export var itemRes:InventoryItems

func collect(inventory : Inventory):
	inventory.insert(itemRes)
	queue_free()
	
