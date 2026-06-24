extends Node2D

var body_names = ["1", "2", "3", "4", "5", "6", "7", "8", "0"]

var bone_names = [
	"Skeleton2D/Bone2D",
	"Skeleton2D/Bone2D2",
	"Skeleton2D/Bone2D3",
	"Skeleton2D/Bone2D4",
	"Skeleton2D/Bone2D5",
	"Skeleton2D/Bone2D6",
	"Skeleton2D/Bone2D7",
	"Skeleton2D/Bone2D8",
	"Skeleton2D/Bone2D9"
]

func _physics_process(delta: float) -> void:
	for i in range(body_names.size()):
		var body = get_node_or_null(body_names[i])
		var bone = get_node_or_null(bone_names[i])

		if body != null and bone != null:
			bone.global_position = body.global_position
