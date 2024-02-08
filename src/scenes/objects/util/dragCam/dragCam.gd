extends Camera2D


func zoom(delta : float):
	set_zoom(zoom - zoom * delta * 0.1)
	var viewport: Viewport = get_viewport()

func _unhandled_input(event):
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_WHEEL_DOWN:
				if event.pressed: zoom(-event.get_factor())
			BUTTON_WHEEL_UP:
				if event.pressed: zoom(event.get_factor())
	if event is InputEventMouseMotion:
		if Input.is_mouse_button_pressed(BUTTON_LEFT):
			position -= event.get_relative() * zoom
