extends Node2D

var main_char = load("res://scenes/Character.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var m_c = main_char.instantiate()
	add_child(m_c)
	m_c.interact.connect(_on_interact.bind($ZONE))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_zone_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.canInteract = true
		
	pass # Replace with function body.

func _on_zone_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.canInteract = false
	pass # Replace with function body.
	
func _on_interact(node):
	if node.visible == true:
		node.visible = false
	elif node.visible == false:
		node.visible = true
