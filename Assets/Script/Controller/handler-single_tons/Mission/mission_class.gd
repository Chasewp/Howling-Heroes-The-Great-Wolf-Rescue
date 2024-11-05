"""Singleton <AutoLoad> - Mision_Data_Stats"""
class_name MissionClass
extends Node

@export var wolf_rescued:int = 0
@export var enemy_kill:int = 0
@export var boss_kill : int = 0
@export var total_wolves_rescued : int:
	set= set_total_wolves_rescued,
	get= get_total_wolves_rescued
	
@export var total_boss_killed:int:
	set = set_total_boss_killed,
	get = get_total_boss_killed
	
@export var total_enemies_killed : int :
	set = set_total_enemies_killed,
	get = get_total_enemies_killed

#for update_wolf_rescue_data from the wolf
func update_wolf_rescue():
		wolf_rescued +=1
	
func update_enemy_kills():
		enemy_kill +=1
	
func update_boss_kills():
		boss_kill+=1
	
func set_total_wolves_rescued(total_wolves):
	total_wolves_rescued = total_wolves
	
func get_total_wolves_rescued()->int:
	return total_wolves_rescued
	
func set_total_boss_killed(total_boss):
	total_boss_killed = total_boss
	
func get_total_boss_killed()->int:
	return total_boss_killed
	
func set_total_enemies_killed(total_enemies):
	total_enemies_killed = total_enemies
	
func get_total_enemies_killed()->int:
	return total_enemies_killed
