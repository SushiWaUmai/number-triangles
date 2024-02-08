class_name NumberRow extends HBoxContainer

var numbers

func _init(numbers):
	alignment = ALIGN_CENTER
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	self.numbers = numbers

func _ready():
	for num in numbers:
		add_child(NumberLabel.new(String(num)))
