class_name Bullets
extends Area2D

var speed := 600
var direction := Vector2.ZERO
var enemy = Enemy.new()

func _ready():
	self.set_as_top_level(true)
	$AnimatedSprite2D.play("Bullets_Player")
	
func _on_Bullet_body_entered(body):
	if body.is_in_group("Enemy"):
		body.queue_free()
		queue_free()
		#(body as Enemy)
		
func exploded()->void:
	$AnimatedSprite2D.play("Hit_Bullets_Player")

func _physics_process(delta):
	position += direction * speed * delta
	
	# Remove bullet if it goes off-screen
	#if !get_viewport_rect().has_point(global_position):
		#queue_free()
	

	
	
	
	
	

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
