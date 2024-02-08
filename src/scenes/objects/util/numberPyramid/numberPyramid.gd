extends VBoxContainer

func _ready():
	var prevNumbers = []
	for n in range(1,200):
		var numbers  = []
		numbers.append(1)
		for i in range(0, prevNumbers.size() - 1):
			numbers.append(prevNumbers[i] + prevNumbers[i+1])
		if n > 1: numbers.append(1)
		add_child(NumberRow.new(numbers))
		prevNumbers = numbers
