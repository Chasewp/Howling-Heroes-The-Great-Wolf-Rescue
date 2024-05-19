class_name Inventory
extends Control

#Varibles class
@export var nameItem : String : set = setter_name_items, get = getter_name_items
@export var descriptions : String : set=setter_descriptions_item, get = getter_name_items
@export var quantity : int : set = setter_quantity, get = getter_quantity

#Setter name Item
func setter_name_items(itms):
	nameItem = itms
	
#Setter descriptions 
func setter_descriptions(dcs):
	descriptions = dcs
	
#Setter quantity
func setter_quantity(qty):
	quantity = qty
	
#Getter name items
func getter_name_items():
	return nameItem
	


