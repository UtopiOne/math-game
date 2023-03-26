extends RigidBody2D

signal hit(number)

@export var corresponding_number = 0
const move_speed = 900
var velocity = Vector2(-1 * move_speed, 0)

func _ready():
	mass = 500

func _integrate_forces(state):
	linear_velocity = velocity
	
func _on_body_entered(body):
	hit.emit(corresponding_number)

