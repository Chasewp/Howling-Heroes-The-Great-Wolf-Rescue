class_name Inventory
extends Resource

signal updated

@export var slots : Array[InventorySlot]
#@export var slots : Array[InventorySlot]


func insert_items(item : InventoryItems):
	var itemSlots = slots.filter(func(slot): return slot.item == item)
	if !itemSlots.is_empty():
		itemSlots[0]._quantity += 1
	else:
		var emptySlots = slots.filter(func(slot): return slot.item == null)
		if !emptySlots.is_empty():
			emptySlots[0].item = item
			emptySlots[0]._quantity = 1
	updated.emit()


#func insert(item: InventoryItems):
	#var itemslots = slots.filter(
		#func (slot):
			#return slot.item==item && slot._quantity<item._max_quantity
			#)
	#if!itemslots.is_empty():
		#itemslots[0]._quantity +=1
		#
	#else:
		#var emptySlots = slots.filter(
			#func(slot):
				#return slot.item == null
		#)	
		#if !emptySlots.is_empty():
			#emptySlots[0].item = item
			#emptySlots[0]._quantity=1
	#updated.emit()
	#
	#for slot in slots:
		#if slot.item == item:
			#slot._quantity +=1
			#updated.emit() 
			#return
	#
	#for a in range(slots.size()):
		#if !slots[a].item:
			#slots[a].item = item
			#slots[a]._quantity =1
			#updated.emit() 
		#return 
		
	

