extends VBoxContainer

func _ready():
	var prevNumbers = []
	for n in range(1,20):
		var numbers  = []
		numbers.append(Vector3(1, n, 1))
		for i in range(0, prevNumbers.size() - 1):
			numbers.append(Vector3(prevNumbers[i].x + prevNumbers[i+1].x + 0,n,i+2))
		if n > 1: numbers.append(Vector3(1,n,n))
		add_child(NumberRow.new(numbers))
		prevNumbers = numbers
