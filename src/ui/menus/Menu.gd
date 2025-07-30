extends CanvasLayer

func _ready():
	Input.set_custom_mouse_cursor(Global.cursor_knife)
	$LoadingLabel.visible = false
	MenuMusic.on_menu_started()  # Assuming this handles the menu music
	
