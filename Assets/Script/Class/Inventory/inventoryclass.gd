"Singleton"
class_name inventory_details_name
extends Node

#Varibles class
@export var nameItem : String : set = setter_name_items, get = getter_name_items
@export var descriptions : String : set=setter_descriptions_items, get = getter_name_items
@export var quantity : int : set = setter_quantity_items, get = getter_quantity_items



#Setter name Item
func setter_name_items(itms):
	nameItem = itms
	
#Setter descriptions 
func setter_descriptions_items(dcs):
	descriptions = dcs
	
#Setter quantity
func setter_quantity_items(qty):
	quantity = qty
	
#Getter name items
func getter_name_items():
	return nameItem
	
#Getter Descriptions 
func getter_descriptions_items():
	return descriptions

#Getter quantity 
func getter_quantity_items():
	return quantity
