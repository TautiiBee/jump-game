extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$UserInterface/UserInterface/Retry.hide()



func _on_player_kill_floor_touch():
	$UserInterface/UserInterface/Retry.show()

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept") and $UserInterface/UserInterface/Retry.visible:
		# This restarts the current scene.
		get_tree().reload_current_scene()
