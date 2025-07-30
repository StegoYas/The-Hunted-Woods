extends CanvasLayer

signal scene_changed

@onready var animation_player = $AnimationPlayer
@onready var black = $Control/BlackColorRect
@onready var delay_timer = $DelayTimer

func change_scene_to_file(path, delay = 0.2):
	delay_timer.start(delay)
	await delay_timer.timeout
	
	animation_player.play("fade")
	await animation_player.animation_finished

	get_tree().change_scene_to_file(path)

	animation_player.play_backwards("fade")
	await animation_player.animation_finished

	emit_signal("scene_changed")
