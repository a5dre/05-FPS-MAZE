extends Control



func _on_1Player_pressed():
	get_tree().change_scene("res://Game.tscn")


func _on_2Player_pressed():
	get_tree().change_scene("res://HUD/Lobby.tscn")


func _on_Quit_pressed():
	get_tree().quit()

