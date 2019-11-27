extends Spatial

var score = 0
var time_remaining = 120
onready var Stuff = $Stuff



func _unhandled_input(event):
		if Input.is_action_pressed("quit"):
			get_tree().quit()
			
			
func increase_score(points):
	score += points
	$HUD/Score.text = str(score)
	if Stuff.get_child_count() == 1:
		get_tree().change_scene("res://Scenes/YouWin.tscn")
	
func increase_size(size):
	$Ground/Hole.increase_size(size)

func _on_Countdown_timeout():
	time_remaining -= 1
	if time_remaining <= 0:
		get_tree().change_scene("res://Scenes/GameOver.tscn")
	else:
		var m = time_remaining / 60
		var s = time_remaining % 60
		$HUD/Timer.text = str(m) + ":" + str(s)

