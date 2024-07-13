extends Control

@onready var txt = $RichTextLabel
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



	
	
func _on_button_2_pressed():
	print("Wolves Data Loaded")
	txt.set_text(str(Wolves_Data._get_Gray_Wolf_Image_Path()))
	
