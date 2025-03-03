extends Node2D

var main_char = load("res://scenes/Character.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var m_c = main_char.instantiate()
	add_child(m_c)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
