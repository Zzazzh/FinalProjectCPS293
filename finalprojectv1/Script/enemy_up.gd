extends Area2D
@onready var playerbound = get_node("/root/Game/playerbound")

var speed = 75
var sensor = 0

func _process(delta: float) -> void:
	
	#move up 
	position.y -= speed * delta
	
	#delete when hitting player bounds
	if position.y < 325:
		queue_free()

	#sensor
	if sensor == 1:
		if Global.sensor_enemy == 1:
			if Input.is_action_just_pressed("attack"):
				queue_free()
		pass

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 1

func _on_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 0
