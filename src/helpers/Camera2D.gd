extends Camera2D

var scene_1_limits = [0, 0, 960, 1000]
var scene_3_limits = [10, -200, 2350, 2150]

func _ready():
	var current_scene = get_tree().current_scene.name
	match current_scene:
		"Level1":
			pass  # Keep default limits or add your own for Level1
		"Level3":
			limit_left = scene_3_limits[0]
			limit_top = scene_3_limits[1]
			limit_right = scene_3_limits[2]
			limit_bottom = scene_3_limits[3]
			
