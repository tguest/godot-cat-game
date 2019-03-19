extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Cat_area_entered2(area):
	if area.name == "endgamebox":
		get_tree().get_root().get_node("Main").end_game() # Replace with function body.
