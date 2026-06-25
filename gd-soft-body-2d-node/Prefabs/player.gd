extends Node2D

@onready var controller: CharacterBody2D = $SoftBody2D/CharacterBody2D

const SPEED := 300.0
const JUMP_VELOCITY := -800.0

func _physics_process(delta):
	var before := controller.global_position

	if not controller.is_on_floor():
		controller.velocity += controller.get_gravity() * delta

	if Input.is_action_just_pressed("ui_accept") and controller.is_on_floor():
		controller.velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	controller.velocity.x = direction * SPEED

	controller.move_and_slide()

	var movement_delta := controller.global_position - before

	global_position += movement_delta
	controller.position = Vector2.ZERO
