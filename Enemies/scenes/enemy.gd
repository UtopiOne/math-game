extends StaticBody2D

export var corresponding_number = 0
const move_speed = 10

func _physics_process(delta):
	position.x -= move_speed
	

