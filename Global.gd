extends Node

var menu = null


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	


func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/HUD/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.show()
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			else:
				get_tree().paused = false
				menu.hide()
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

		
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
