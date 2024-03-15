extends AnimatedSprite2D

@export var speed = 100

@export var gravity = float(55)
@export var jumping_force = 1000

func _ready():
	pass


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
		
		
		

	pass
