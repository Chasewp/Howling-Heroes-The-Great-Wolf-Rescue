extends Control

@onready var sfx = $AudioStreamPlayer2D
@onready var fade_animation = $AnimationPlayer


func _ready():
	fade_animation.play("Fade_in")
	sfx.play()


func _on_audio_stream_player_2d_finished():
	fade_animation.play("Fade_out")
	LoadingScreen.load_scence("res://Assets/Scences/Biome/How_to_Play/How_To_Play.tscn")
