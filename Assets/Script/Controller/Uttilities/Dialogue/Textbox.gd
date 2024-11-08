extends MarginContainer

signal finished_displaying()

"Variables"
@onready var label : Label = $MarginContainer/Label
@onready var timer : Timer = $LetterDisplayyerTimer
@onready var dialogue_sfx:AudioStreamPlayer2D  = $AudioStreamPlayer2D
@onready var next_indicator = $NinePatchRect/Control2/NextIndicator
const MAX_WITDH : int = 256

var text:String = ""
var letters_index : int = 0


var letter_time : float = 0.03
var space_time : float = 0.06
var punctuation_time: = 0.2

"""Display Words"""
func display_text(text_to_display: String, speech_sfx:AudioStream):
	text  = text_to_display
	label.set_text(text_to_display)
	dialogue_sfx.stream = speech_sfx
	await  resized
	custom_minimum_size.x = min(size.x,MAX_WITDH)
	
	if MAX_WITDH < size.x:
		label.autowrap_mode = TextServer.AUTOWRAP_WORD
		await resized #wait for x resize
		await resized #wait for y resize
	
	global_position.x -= size.x / 2
	global_position.y -= size.y + 24
	
	label.set_text("")
	
	pivot_offset = Vector2(size.x /2,size.y)
	
	var tween = get_tree().create_tween()
	tween.tween_property(
		self,"scale", Vector2(1,1),0.15
	).set_trans(Tween.TRANS_BACK)
	_display_letter()

"""Display Letter"""
func _display_letter():
	label.text += text[letters_index]
	
	letters_index +=1
	if text.length() <= letters_index  :
		finished_displaying.emit()
		next_indicator.visible = true
		return 
	
	match text[letters_index]:
		"?",",",".","!":
			timer.start(punctuation_time)
		" ":
			timer.start(space_time)
		_ :
			timer.start(letter_time)
			
			var new_dialogue_sfx = dialogue_sfx.duplicate()
			new_dialogue_sfx.pitch_scale += randf_range(-0.1,0.1)
			if text[letters_index] in ["a","i","u","e"<"o"]:
				new_dialogue_sfx.pitch_scale += 0.2
			get_tree().root.add_child(new_dialogue_sfx)
			new_dialogue_sfx.play()
			await  new_dialogue_sfx.finished
			new_dialogue_sfx.queue_free()
			
func _on_letter_displayyer_timer_timeout():
	_display_letter()

func _ready():
	scale = Vector2.ZERO
	
