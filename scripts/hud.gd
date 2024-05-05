extends CanvasLayer

func _ready():
	var room_list = get_node("room_list")
	
	room_list.add_item("Portrait room")
	room_list.add_item("Table room")
	room_list.add_item("Shelf room")
	room_list.add_item("Symbol room")
	
	room_list.select(0) # Protrait room is selected by default
	
	room_list.item_selected.connect(_on_item_selected)

func _on_item_selected(index):

	var game_camera = get_viewport().get_camera_2d()
	game_camera.position = Vector2(index * 1024, 0)
	# game_camera.global_position = Vector2(index * 1024 + 1024/2, 768/2) # TODO: Get width from project settings/viewport; breaks clickable/Klickable scripts because of position
