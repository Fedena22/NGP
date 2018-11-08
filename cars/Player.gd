extends "res://cars/car.gd"

func control(delta):
	var rot_dir = 0
	
	if Input.is_action_pressed('turn_right') and (Input.is_action_pressed("forward") or Input.is_action_pressed("back")):
		rot_dir +=1.5
	if Input.is_action_pressed("turn_left") and (Input.is_action_pressed("forward") or Input.is_action_pressed("back")):
		rot_dir -=1.5
	rotation += rot_dir * delta
	velocity = Vector2()
	if Input.is_action_pressed("forward"):
		velocity = Vector2(0, -max_speed).rotated(rotation)
	
	if Input.is_action_pressed("back"):
		velocity = Vector2(0, max_speed/2).rotated(rotation)
