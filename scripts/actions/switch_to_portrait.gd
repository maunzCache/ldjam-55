extends Control

func _on_focus_entered():
	set_process_input(true)
	print(editor_description)

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() && event.button_index == MOUSE_BUTTON_LEFT:
			get_tree().change_scene_to_file("res://rooms/portraitRoom/portraitRoom.tscn")
			print("habe gewechselt in" + editor_description)
