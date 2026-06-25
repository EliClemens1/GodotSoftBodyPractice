#extends Area2D
#
#@export var speed := 300.0
##@export var gravity := 1200.0
#@export var jump_force := -500.0
#
#var velocity := Vector2.ZERO
#var on_floor := false
#
#func _physics_process(delta):
	## Horizontal movement
	#var direction := Input.get_axis("move_left", "move_right")
	#velocity.x = direction * speed
#
	## Gravity
	#if !on_floor:
		#velocity.y += gravity * delta
#
	## Jump
	#if Input.is_action_just_pressed("jump") and on_floor:
		#velocity.y = jump_force
#
	## Move
	#position += velocity * delta
