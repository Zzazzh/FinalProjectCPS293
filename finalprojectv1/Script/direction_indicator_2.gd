extends Area2D

@onready var animp = $AnimationPlayer

var rotation_speed = 5

var sensor = 0 


func _physics_process(delta: float) -> void:
	var rotation_direction = Input.get_axis("rotate_L_draft", "rotate_R_draft")
	rotation += rotation_direction * rotation_speed * delta
	
	#left rotation snapping
	if Input.is_action_just_released("rotate_L_draft") or Input.is_action_just_released("rotate_R_draft"):
		print (global_rotation_degrees)
		if global_rotation_degrees >= 70 && global_rotation_degrees < 110 or global_rotation_degrees >= -270 && global_rotation_degrees < -250:
				set_global_rotation_degrees(90)
	else:
		pass
	#up rotation snapping
	if Input.is_action_just_released("rotate_L_draft") or Input.is_action_just_released("rotate_R_draft"):
		print (global_rotation_degrees)
		if global_rotation_degrees >= 160 && global_rotation_degrees < 200 or global_rotation_degrees >= -200 && global_rotation_degrees < -160:
				set_global_rotation_degrees(180)
	
	#right rotation snapping
	if Input.is_action_just_released("rotate_L_draft") or Input.is_action_just_released("rotate_R_draft"):
		print (global_rotation_degrees)
		if global_rotation_degrees >= 250 && global_rotation_degrees < 290 or global_rotation_degrees >= -110 && global_rotation_degrees < -70:
				set_global_rotation_degrees(270)
	else:
		pass
		
	#down rotation snapping
	if Input.is_action_just_released("rotate_L_draft") or Input.is_action_just_released("rotate_R_draft"):
		print (global_rotation_degrees)
		if global_rotation_degrees >= -20 && global_rotation_degrees < 20 or global_rotation_degrees > 340 or global_rotation_degrees < -340:
				set_global_rotation_degrees(0)
	else:
		pass

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
