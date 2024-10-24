"Singleton-Loading Screen"
extends Node

signal progress_changed(progress)
signal load_done

var _load_screen_path : String ="res://Assets/Scences/UI/Loading_Screen/loading_screen.tscn"
var _load_screen = load(_load_screen_path)
var _loaded_resource : PackedScene
var _scence_path : String
var _progress : Array = []

var _use_sub_threads : bool = true

func load_scence(scence_path: String)-> void:
	_scence_path = scence_path
	
	var new_loading_screen = _load_screen.instantiate()
	get_tree().get_root().add_child(new_loading_screen)
	
	self.progress_changed.connect(new_loading_screen._update_progress_bar)
	self.load_done.connect(new_loading_screen._Start_outro_animation)
	
	
	await Signal(new_loading_screen, "loading_screen_has_full_coverage")
	
	start_load()
	
func start_load() -> void:
		var state = ResourceLoader.load_threaded_request(_scence_path,"",_use_sub_threads)
		if state == OK :
			set_process(true)
			
func _process(_delta):
	var _load_status = ResourceLoader.load_threaded_get_status(_scence_path,_progress)
	match _load_status:
		0,2 : #? THREAD_LOAD_INVALID_RESOURCE, THREAD_LOAD_FAILED
				set_process(false)
				return
		1: #? THREAD_LOAD_IN_PROGRESS
			emit_signal("progress_changed", _progress[0])
		3: 	#? THREAD_LOAD_LOADED
			_loaded_resource = ResourceLoader.load_threaded_get(_scence_path)
			emit_signal("progress_changed",3.0)
			emit_signal("load_done")
			get_tree().change_scene_to_packed(_loaded_resource)
