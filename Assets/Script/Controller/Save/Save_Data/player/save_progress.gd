class_name  SaveProgress
extends Node

"""Save Manager"""
const BASE_PATH = "user://"
const SAVE_PATH = BASE_PATH + "Save/Progress/"

var progress_data = Data_Progress.new()

#Create Dir
func _create_dir()->void:
	var dir  = DirAccess.open(BASE_PATH)
	dir.make_dir("Save/Progress/")

#Save Data
func save_data (path,resource, name)->void:
	_create_dir()
	
	var fileName = resource.resource_path.get_file()
	
	ResourceSaver.save(resource,path + name + ".tres")

#Load Data
func load_data(save_path,search_file_name):
	for fileName in DirAccess.get_files_at(save_path):
		if fileName == search_file_name + ".tres":
			var resource = ResourceLoader.load(save_path + fileName)
			return resource
