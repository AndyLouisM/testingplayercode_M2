extends TextureRect
@export var mouse_position = Vector2.ZERO
var foll

func _ready():
	pass 



func _process(delta):	
	mouse_position = get_viewport().get_mouse_position()
	self.position = mouse_position
	#print(self.position)
	pass
