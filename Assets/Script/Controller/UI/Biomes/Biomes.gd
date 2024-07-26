class_name Biomes
extends Node2D

signal exit_reached(next_biome:String)

# We don't export a packed scene here to avoid circular references between scenes.
@export_file("*.tscn") var next_biome:String

func _ready():
	if exit_reached.get_connections().size() == 0:
		push_warning(get_path(), " exit_reached is not connected, this doesn't look right.")
	
	var biomes_exits = get_tree().get_nodes_in_group("biome_exit")
	for exit in biomes_exits:
		exit.exit_reached.connect(_on_exit_reached)
		
func _on_exit_reached():
	exit_reached.emit(next_biome)

