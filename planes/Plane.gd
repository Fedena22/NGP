extends KinematicBody2D

signal dead

export (int) var max_speed
export (int) var fuel

var velocity = Vector2()
const GRAVITY = 200.0
var alive = true


func control(delta):
	pass

func _physics_process(delta):
	if not alive:
		return
	control(delta)
	velocity.y += delta * GRAVITY
	move_and_slide(velocity)
	print(fuel)
	