class_name NumberLabel extends Label

func _init(text : String):
	rect_min_size.x = 50
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	set_text(text)

