class_name NumberLabel extends Label

func _init(text : String, n : int, k : int):
	hint_tooltip = "n = %d, k = %d" % [n, k]
	rect_min_size = Vector2(190,100)
	set_text(text)
	align = ALIGN_CENTER
	valign = VALIGN_CENTER
	mouse_filter = MOUSE_FILTER_STOP

