#extends Node2D

enum {LOAD,SAVE}

@onready var Action_Label = $"TextureRect/Action Label"
@onready var back_btn = $"TextureRect/Back Button"
@onready var yes_no_dialog = ""
var action
var clicked_save_num

signal  load_done
signal back_btn_pressed

func _process(delta):
	#super._process(delta)
	if GlobalUi.is_yes_no_dialog_blocking:
			back_btn.process_mode = Node.PROCESS_MODE_DISABLED
	else :
					back_btn.process_mode = Node.PROCESS_MODE_INHERIT

func _init_slots():
	pass
