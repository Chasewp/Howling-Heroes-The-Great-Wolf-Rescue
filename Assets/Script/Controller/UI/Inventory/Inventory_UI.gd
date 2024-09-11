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

func _details_items_clear():
	lblname.set_text("")
	lbldec.set_text("")
	
func _ready():
	update()
	


#Show Items Details
func _on_inventory_panel_slot_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[0]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[0]["_description_Item"])

func _on_inventory_panel_slot_2_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[1]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[1]["_description_Item"])

func _on_inventory_panel_slot_3_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[2]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[2]["_description_Item"])

func _on_inventory_panel_slot_4_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[3]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[3]["_description_Item"])

func _on_inventory_panel_slot_5_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[4]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[4]["_description_Item"])

func _on_inventory_panel_slot_6_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[5]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[5]["_description_Item"])

func _on_inventory_panel_slot_7_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[6]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[6]["_description_Item"])

func _on_inventory_panel_slot_8_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[7]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[7]["_description_Item"])

func _on_inventory_panel_slot_9_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[8]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[8]["_description_Item"])

func _on_inventory_panel_slot_10_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[9]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[9]["_description_Item"])

func _on_inventory_panel_slot_11_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[10]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[10]["_description_Item"])

func _on_inventory_panel_slot_12_mouse_entered():
	lblname.set_text("Name :" + " " + inventory.items[11]["_name"])
	lbldec.set_text("Descriptions :" + " " + inventory.items[11]["_description_Item"])

#Erase the Data
func _on_inventory_panel_slot_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_2_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_4_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_3_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_5_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_6_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_7_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_8_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_9_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_10_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_11_mouse_exited():
	_details_items_clear()

func _on_inventory_panel_slot_12_mouse_exited():
	_details_items_clear()



