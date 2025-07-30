extends "res://src/ui/menus/Menu.gd"

var new_game_dest = "res://src/levels/Level1.tscn"
var credits_dest = "res://src/ui/menus/CreditsMenu.tscn"

func _ready():
	$LoadingLabel2.visible = false
	
func _physics_process(_delta):
#	$SpriteHolder/ghost/AnimationPlayer.play("float")
	pass
	
func _on_NewGameButton_pressed():
	print("CLICKED")
	$LoadingLabel.visible = true
	SceneChanger.change_scene_to_file(new_game_dest)
	
func _on_CreditsButton_pressed():
	$LoadingLabel2.visible = true
	SceneChanger.change_scene_to_file(credits_dest)
