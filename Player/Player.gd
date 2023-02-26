extends KinematicBody2D

onready var PROJECTILE = preload('res://Player/Projectile/Projectile.tscn')

export var speed = 500
var velocity = Vector2.ZERO

var can_shoot: bool = true

func shoot():
	var projectile = PROJECTILE.instance()
	get_node('/root/World').add_child(projectile)
	projectile.global_position = $Position2D.global_position

func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1 
	if Input.is_action_pressed("move_down"):
		velocity.y += 1

	velocity = velocity.normalized() * speed
	
	if Input.is_action_just_pressed("shoot") && can_shoot:
		shoot()
		can_shoot = false
		yield(get_tree().create_timer(0.5), "timeout")
		can_shoot = true

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
