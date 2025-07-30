extends Button

@export var dest_scene = "sample"

func _on_MenuButton_pressed():
	print("BUTTON PRESSED")
	SceneChanger.change_scene_to_file(dest_scene)
