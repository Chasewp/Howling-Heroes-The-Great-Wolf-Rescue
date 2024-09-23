class_name Inventory_Player_Item
extends Control


signal opened
signal closed


#Varibles class

var _isOpen : bool = false
@onready var inventory : Inventory = preload("res://Assets/Inventory/Player_Inventory/Player_Inventory.tres")
@onready var slots : Array = $NinePatchRect/GridContainer.get_children()
@onready var des = $Details_Items


func open():
	self.visible = true
	_isOpen = true
	opened.emit()
	
func close() :
	self.visible = false
	_isOpen = false
	closed.emit()

func update(): 
	for a in range(min(inventory.slots.size(),slots.size())):
		slots[a].update(inventory.slots[a])

func _details_items_clear():
	des.set_text("")
	
func _ready():
	inventory.updated.connect(update)
	update()
	
	


#Show Items Details
func _on_inventory_panel_slot_mouse_entered():
	if inventory.slots[0] == null:
		_details_items_clear()
	else: 
		des.set_text("Name :" + " " + inventory.slots[0]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[0]["item"]["_description_Item"])

func _on_inventory_panel_slot_2_mouse_entered():
	if  inventory.slots[1] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[1]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[1]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_3_mouse_entered():
	if   inventory.slots[2] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[2]["item"]["_name"] + "\n" +"Descriptions :" + " " + inventory.slots[2]["item"]["_description_Item"])
		
func _on_inventory_panel_slot_4_mouse_entered():
	if   inventory.slots[3] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[3]["item"]["_name"] +"\n" +"Descriptions :" + " " + inventory.slots[3]["item"]["_description_Item"])
		
func _on_inventory_panel_slot_5_mouse_entered():
	if   inventory.slots[4] == null :
		_details_items_clear()
	else :	
		des.set_text("Name : " + " " + inventory.slots[4]["item"]["_name"] + "\n" + "Descriptions :" + " "+inventory.slots[4]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_6_mouse_entered():
	if   inventory.slots[5] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[5]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[5]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_7_mouse_entered():
	if   inventory.slots[6] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[6]["item"]["_name"] + "\n" +"Descriptions :" + " " + inventory.slots[6]["item"]["_description_Item"])

func _on_inventory_panel_slot_8_mouse_entered():
	if   inventory.slots[7] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[7]["item"]["_name"] + "\n" +"Descriptions :" + " " + inventory.slots[7]["item"]["_description_Item"])

func _on_inventory_panel_slot_9_mouse_entered():
	if   inventory.slots[8] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[8]["item"]["_name"] + "\n" +  "Descriptions :" + " " + inventory.slots[8]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_10_mouse_entered():
	if   inventory.slots[9] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[9]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[9]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_11_mouse_entered():
	if   inventory.slots[10] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[10]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[10]["item"]["_description_Item"])
		

func _on_inventory_panel_slot_12_mouse_entered():
	if   inventory.slots[11] == null :
		_details_items_clear()
	else : 	
		des.set_text("Name :" + " " + inventory.slots[11]["item"]["_name"] + "\n" + "Descriptions :" + " " + inventory.slots[11]["item"]["_description_Item"])
		

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
