extends Area2D

@export var itemRes:InventoryItems

func collect(inventory : Inventory):
	inventory.insert(itemRes)
	queue_free()
	
