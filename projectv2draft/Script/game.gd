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
		


extends Node2D

var score = 0
var combo = 0

var max_combo = 0
var great = 0
var good = 0
var okay = 0
var missed = 0

var bpm = 115

var song_position = 0.0
var song_position_in_beats = 0
var last_spawned_beat = 0
var sec_per_beat = 60.0 / bpm

var spawn_1_beat = 0
var spawn_2_beat = 0
var spawn_3_beat = 1
var spawn_4_beat = 0

var lane = 0
var rand = 0
var note = load("res://Scenes/Note.tscn")
var instance


func _ready():
	randomize()
	$Conductor.play_with_beat_offset(8)
	Global.beat.connect(_on_Conductor_beat)
	Global.measure.connect(_on_Conductor_measure)


func _input(event):
	if event.is_action("escape"):
		if get_tree().change_scene("res://Scenes/Menu.tscn") != OK:
			print ("Error changing scene to Menu")


func _on_Conductor_measure(position):
	if position == 1:
		_spawn_notes(spawn_1_beat)
	elif position == 2:
		_spawn_notes(spawn_2_beat)
	elif position == 3:
		_spawn_notes(spawn_3_beat)
	elif position == 4:
		_spawn_notes(spawn_4_beat)
