extends Button
func spawn_enemy():
	var new_enemy = preload("res://Scenes/enemy.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)
	
func _ready():
	var button = Button.new()
	button.text = "Click me"
	button.pressed.connect(self._button_pressed)
	add_child(button)

func _button_pressed():
	spawn_enemy()
