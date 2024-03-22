extends Node2D

var bullet_instance_scene = preload("res://bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse_location = Vector2.ZERO
	mouse_location = get_child(2).get_child(0).get_cursor_location()
	
	var player_animation_2D = get_child(1).get_child(0)
	var player_location = Vector2.ZERO
	player_location = get_child(1).get_player_position()
	
	
	if (mouse_location.x <= player_location.x):
		player_animation_2D.play("idle_left")
	elif (mouse_location.x > player_location.x):
		player_animation_2D.play("idle_right")
	
	player_animation_2D.connect("shooting", the_shooting_signal(), 0)
	pass

func the_shooting_signal():
	bullet_instance_scene.instantiate()
	pass
