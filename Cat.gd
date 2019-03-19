extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var is_yumyum = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_yumyum and Input.is_mouse_button_pressed(BUTTON_LEFT):
		scale.x *= 1.005
		scale.y *= 1.005
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
		$AnimatedSprite.set_frame(0)

func _on_YumYum_area_entered(area):
	if area.name == "Cat":
		is_yumyum = true

func _on_YumYum_area_exited(area):
	if area.name == "Cat":
		is_yumyum = false
