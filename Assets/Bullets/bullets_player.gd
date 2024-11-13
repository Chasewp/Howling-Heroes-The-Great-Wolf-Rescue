class_name Bullets
extends Area2D

@export var speed = 600
@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	animation.play("Bullets_Player")
	position += (Vector2.RIGHT*speed).rotated(rotation)*delta
#
func _ready():
	set_as_top_level(true)
	
func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
