extends "res://planes/Plane.gd"

func control(delta):
	if Input.is_action_just_pressed("up") and fuel > 1:
		velocity = Vector2(velocity.x, -max_speed)
	if Input.is_action_just_released("up") and fuel >1:
		fuel -= .010
	if Input.is_action_just_pressed("down") and fuel > 1:
		velocity = Vector2(0, max_speed)
	if Input.is_action_just_released("down") and fuel >1:
		fuel -= .010
	if Input.is_action_just_pressed("forward"):
		velocity.x += max_speed
	if Input.is_action_just_released("forward") and fuel >1:
		fuel -= .005
	if Input.is_action_just_pressed("brake"):
		velocity = Vector2 (0,velocity.y)
		
func _on_Dead_body_entered(body):
	alive = false
	#self.queue_free()
	get_tree().change_scene("res://map/Map.tscn")