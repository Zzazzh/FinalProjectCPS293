extends Area2D

@onready var animp = $AnimationPlayer

var rotation_speed = 5

var sensor = 0 


func _physics_process(delta: float) -> void:
	var rotation_direction = Input.get_axis("rotate_L_draft", "rotate_R_draft")
	rotation += rotation_direction * rotation_speed * delta
	
func _process(delta: float) -> void:
	#sensor press good 
	if sensor == 1:
		if Input.is_action_just_pressed("attack"):
			animp.play("good")

	#sensor press bad 
	if sensor == 0:
		if Input.is_action_just_pressed("attack"):
			animp.play("bad")


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 1 
	Global.sensor_enemy = 1


func _on_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor =  0
	Global.sensor_enemy = 0
