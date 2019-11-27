extends CSGCylinder

var max_size = 1.5
var min_size = 0.1
var change_size = 0.01
var movement = 0.02

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("increase_size"):
		radius += change_size
		radius = min(radius, max_size)
	if Input.is_action_pressed("decrease_size"):
		radius -= change_size
		radius = max(radius, min_size)
	if Input.is_action_pressed("move_back"):
		translation += Vector3(0,0,movement)
	if Input.is_action_pressed("move_forward"):
		translation += Vector3(0,0,-movement)
	if Input.is_action_pressed("move_left"):
		translation += Vector3(-movement,0,0)
	if Input.is_action_pressed("move_right"):
		translation += Vector3(movement,0,0)