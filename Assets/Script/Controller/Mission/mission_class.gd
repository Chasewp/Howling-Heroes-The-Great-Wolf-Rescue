"""Singleton <AutoLoad> - Mision_Data_Stats"""
class_name MissionClass
extends Node

@export var wolf_rescued:int = 0
@export var enemy_kill:int = 0
@export var boss_kill : int = 0
@export var total_wolf_rescued:int = 0
@export var total_enemy_kills:int = 0
@export var total_boss_kills:int = 0

#for update_wolf_rescue_data from the wolf
func update_wolf_rescue():
	wolf_rescued +=1
	
func set_total_wolf_rescue(total_wolf_rescue):
	total_wolf_rescued = total_wolf_rescue

func get_total_wolf_rescue():
	return total_wolf_rescued

func update_enemy_kills():
	enemy_kill +=1

func set_total_enemy_kills(total_kills_enemy):
	total_enemy_kills = total_kills_enemy
	
func update_boss_kills():
	boss_kill+=1
	
func set_total_boss_killed(total_kills_bos):
	total_boss_kills = total_kills_bos
	
