extends HBoxContainer


func set_count(count):
	$Count.set_text("Sheep count: " + str(count))


func set_time(time):
	$Timer.set_text("Time: " + str(time))
