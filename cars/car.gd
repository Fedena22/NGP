extends KinematicBody2D

export (int) var max_speed

var velocity = Vector2()

func control(delta):
	pass

func _physics_process(delta):
	control(delta)
	move_and_slide(velocity)
	