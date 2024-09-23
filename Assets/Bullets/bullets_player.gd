extends AnimatedSprite2D

const SPEED := 1800.0

@export var lifetime := 3.0

var direction := Vector2.ZERO

@onready var _sprite := $AnimatedSprite2D
@onready var _hitbox := $get_hit


func _ready():
	set_as_top_level(true)
	look_at(position + direction)
	_hitbox.connect("body_entered", Callable(self, "_on_HitBox_body_entered"))

	var timer := get_tree().create_timer(lifetime)
	timer.connect("timeout", Callable(self, "queue_free"))
	

	
func _physics_process(delta: float) -> void:
	position += direction * SPEED * delta
	_sprite.play("Bullets_Player")

func _on_HitBox_body_entered(_body: Node) -> void:
	_sprite.play("Hit_Bullet_Player")
	queue_free()

