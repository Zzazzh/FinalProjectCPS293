extends CharacterBody2D


@onready var playerbound = get_node("/root/Game/playerbound")

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(playerbound.global_position)
	velocity = direction * 200.0
	move_and_slide()



func _on_hurtbox_area_entered(area: Area2D) -> void:
	print_debug("slime hit") 
	queue_free()
