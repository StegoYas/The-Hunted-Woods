extends Node2D

@onready var infinity_light = $Infinilight
@onready var player = $Player
@onready var camera = $Player/ArcLightPosition/Camera2D

signal noise_made  # Used by enemy detection system
# signal level_started  # (Commented out until needed)

func _init():
	Global.enemy_aggression = 0
	Global.godmode = false
	
func _ready():
	Input.set_custom_mouse_cursor(Global.cursor)
	MenuMusic.on_level_started()
	print("STARTED LEVEL")

func _on_getting_noise():
	noise_made.emit()

func _physics_process(_delta):
	if OS.is_debug_build() and Input.is_action_just_pressed("debug_reset"):
		get_tree().reload_current_scene()
#	if Input.is_action_just_pressed("debug_light"):
#		infinity_light.visible = !infinity_light.visible
#	if Input.is_action_just_pressed("debug_zoom_out"):
#		camera.set_zoom(camera.get_zoom() * 1.25)
#	if Input.is_action_just_pressed("debug_zoom_in"):
#		camera.set_zoom(camera.get_zoom() * 0.8)
#	if Input.is_action_just_pressed("debug_godmode"):
#		Global.godmode = !Global.godmode
##	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
#		if Input.is_action_pressed("debug_teleport"):
#			var mouse_pos = get_viewport().get_mouse_position()
#			player.position = mouse_pos
	
#func _input(event):
#	if event is InputEventMouseMotion:
#		var mouse_pos = event.relative
#		$Player.move_arc_light(mouse_pos)
