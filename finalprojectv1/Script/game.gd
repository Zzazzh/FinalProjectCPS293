extends Node

const enemy_left = preload("res://Scenes/enemy_left.tscn")
const enemy_right = preload("res://Scenes/enemy_right.tscn")
const enemy_up = preload("res://Scenes/enemy_up.tscn")
const enemy_down = preload("res://Scenes/enemy_down.tscn")

var random = 0 
var RNG = RandomNumberGenerator.new()

func _process(delta: float) -> void:
	
	pass
	
	#test change in code going to git

func _on_timer_timeout() -> void:
	$Timer.start()
	RNG.randomize()
	var random_int = RNG.randi_range(0, 4) 
	random = random_int
	
	if random == 1:
		var el = enemy_left.instantiate()
		get_parent().add_child(el)
		el.global_position = $Spawn/Marker2D_Left.global_position 
	# Random2
	if random == 2:
		var er = enemy_right.instantiate()
		get_parent().add_child(er)
		er.global_position = $Spawn/Marker2D_Right.global_position 
	#random3
	if random == 3:
		var eu = enemy_up.instantiate()
		get_parent().add_child(eu)
		eu.global_position = $Spawn/Marker2D_Up.global_position 
	
	if random == 4:
		var ed = enemy_down.instantiate()
		get_parent().add_child(ed)
		ed.global_position = $Spawn/Marker2D_Down.global_position 
	
	
