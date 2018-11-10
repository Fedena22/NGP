extends KinematicBody2D

export (int) var max_speed

var velocity = Vector2()

func control(delta):
	pass

func _physics_process(delta):
	control(delta)
	move_and_collide(velocity * delta)

	var kb2d = self.move_and_collide(velocity * delta)
	if (kb2d):
    print("collided with" + str(kb2d.collider_id))