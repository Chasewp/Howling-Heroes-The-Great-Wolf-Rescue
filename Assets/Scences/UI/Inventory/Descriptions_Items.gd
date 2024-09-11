class_name detail_items
extends RichTextLabel

#display details items
func _details_items(name_items: String,detail: String):
	$Descriptions_Items.set_text("Name :" + " " + name_items + "\n" + "Descriptions :" + " " + detail)

func get_data():
	$Descriptions_Items.get_text()
