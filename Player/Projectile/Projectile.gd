extends Area2D

var speed = 20

func _physics_process(delta):
	position.x += speed 
	
func _on_Projectile_area_entered(area):
	queue_free()


func _on_Projectile_body_entered(body):
	body.queue_free()
	queue_free()
