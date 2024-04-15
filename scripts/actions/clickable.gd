extends Sprite2D

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var local_event_position = to_local(event.position)
		if get_rect().has_point(local_event_position) and is_pixel_opaque(local_event_position):
			print(editor_description)
