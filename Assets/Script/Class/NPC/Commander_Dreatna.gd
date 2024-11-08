class_name Commander_Dreatna
extends CharacterBody2D

@onready var interaction_area = $InteractionsArea
@onready var sprite = $AnimatedSprite2D
@onready var spepech_Sound = preload("res://addons/dialogic/Example Assets/sound-effects/typing3.wav")

const LINES:Array[String]=[
	"Oh, Hello Player.",
	"Here your equipment for the mission.",
]

func _ready():
	interaction_area.interact = Callable(self,"_on_interact")


func _on_interact():
	DialogueManager.start_dialog(global_position,LINES,spepech_Sound)
	await DialogueManager.dialog_finished
	

#func _unhandled_input(event):

	#if event.is_action_pressed("interact"):
		#if interaction_area.get_overlapping_areas()>0:
			##InteractionLabel.hide_label()
			
