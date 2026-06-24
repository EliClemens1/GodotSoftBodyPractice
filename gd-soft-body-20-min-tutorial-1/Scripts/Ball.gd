extends Node

func _physics_process(delta): 
	for i in 9: 
		get_node("Skeleton2D/" + str(i)).global_position = get_node(str(i)).global_position 
