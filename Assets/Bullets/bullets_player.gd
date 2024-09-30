class_name Bullets
extends Node

var enemy = Enemy.new()
func _ready():
	$AnimatedSprite2D.play("Bullets_Player")
	
func _on_Bullet_body_entered(body):
	if body is Enemy:
		(body as Enemy).exploded()
		
func exploded()->void:
	$AnimatedSprite2D.play("Hit_Bullets_Player")
