extends CharacterBody2D

@onready var PROJECTILE = preload('res://Player/Projectile/Projectile.tscn')

@export var speed = 1000
var screen_size

var can_shoot: bool = true

func _ready():
	screen_size = get_viewport_rect().size

func shoot():
	var projectile = PROJECTILE.instantiate()
	get_node('/root/World').add_child(projectile)
	projectile.global_position = $Marker2D.global_position

func get_input():
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1 
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	if Input.is_action_just_pressed("shoot") && can_shoot:
		shoot()
		can_shoot = false
		await get_tree().create_timer(0.25).timeout
		can_shoot = true
		
	return velocity

func _physics_process(delta):
	velocity = await get_input()
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		
		position.x = clamp(position.x, 0, screen_size.x)
		position.y = clamp(position.y, 0, screen_size.y)
