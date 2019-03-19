extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	position = mouse_pos
	position.x -= 180
	position.y += 200
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		$Hurtbox/Particles2D.emitting = true
	else:
		$Hurtbox/Particles2D.emitting = false
		# make a particles

