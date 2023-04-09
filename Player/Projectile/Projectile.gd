extends Area2D

var speed = 20

func _physics_process(delta):
	position.x += speed 
	
func _on_Projectile_areaasd_entered(area):
	queue_free()

func _on_Projectile_body_entered(body):
	Enemy.corresponding_number += str(body.corresponding_number)
	
	body.queue_free()
	queue_free()
