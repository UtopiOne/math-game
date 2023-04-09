extends RigidBody2D

signal hit(number)

@export var corresponding_number = ''
const move_speed = 1500
var velocity = Vector2(-1 * move_speed, 0)

func _ready():
	mass = 100
	linear_velocity = velocity

func _integrate_forces(state):
	linear_velocity = velocity
	
func _on_body_entered(body):
	hit.emit(corresponding_number)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
