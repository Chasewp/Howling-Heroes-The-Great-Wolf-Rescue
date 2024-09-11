class_name Inventory_Player_Item
extends Control


signal opened
signal closed


#Varibles class

var _isOpen : bool = false
@onready var inventory : Inventory = preload("res://Assets/Inventory/Player_Inventory/Player_Inventory.tres")
@onready var slots : Array = $NinePatchRect/GridContainer.get_children()
@onready var lblname = $Name
@onready var lbldec = $Description


func open():
	self.visible = true
	_isOpen = true
	opened.emit()
	
func close() :
	self.visible = false
	_isOpen = false
	closed.emit()

func update(): 
	for a in range(min(inventory.items.size(),slots.size())):
		slots[a].update(inventory.items[a])
		
		
		
func _ready():
	update()
	print()



func _on_inventory_panel_slot_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[0]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[0]["_description_Item"])
	
	

	
func _details_items_clear():
	lblname.set_text("")
	lbldec.set_text("")
	
func _on_inventory_panel_slot_mouse_exited():
	_details_items_clear()
