class_name NumberRow extends HBoxContainer

var numbers

func _init(sNumbers):
	alignment = ALIGN_CENTER
	self.numbers = sNumbers
	mouse_filter =Control.MOUSE_FILTER_IGNORE

func _ready():
	for num in numbers:
		add_child(NumberLabel.new(String(num.x),num.y,num.z))
