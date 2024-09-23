class_name Enemy extends Character

@onready var _vision : Area2D = get_node_or_null("Vision")
@onready var _line_of_sight : RayCast2D = get_node_or_null("Vision/LineOfSight")
@onready var _patrol : Node2D = get_node_or_null("Patrol")
var _hero : Hero
var _can_see_hero : bool

func _process(_delta : float):
	if _hero && _line_of_sight:
		_line_of_sight.target_position = _hero.global_position - global_position
		if not _is_facing_left:
			_line_of_sight.target_position.x *= -1
		if _line_of_sight.is_colliding() && _line_of_sight.get_collider() == _hero:
			_see_hero(true)
		else:
			_see_hero(false)
	else:
		_see_hero(false)
	if _can_see_hero:
		run(sign(_hero.global_position.x - global_position.x))

func _see_hero(can_now_see_hero : bool):
	if not _can_see_hero && can_now_see_hero:
		_can_see_hero = true
		if _patrol:
			_patrol.pause()
		if _hero.global_position.x < global_position.x:
			face_left()
		elif _hero.global_position.x > global_position.x:
			face_right()
	elif _can_see_hero && not can_now_see_hero:
		_can_see_hero = false
		if _patrol:
			_patrol.resume()

func face_left():
	super.face_left()
	if _vision:
		_vision.scale.x = 1

func face_right():
	super.face_right()
	if _vision:
		_vision.scale.x = -1

func _on_vision_body_entered(body : Node2D):
	if body is Hero:
		_hero = body

func _on_vision_body_exited(body : Node2D):
	if body == _hero:
		_hero = null

func _on_target_area_entered(_area : Area2D):
	attack()
