extends Spatial

var score = 0



func _unhandled_input(event):
		if Input.is_action_pressed("quit"):
			get_tree().quit()
			
			
func increase_score(points):
	score += points
	
func increase_size(size):
	pass