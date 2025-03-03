extends CharacterBody2D

@export var speed : float = 200

var canInteract : bool = false;
signal interact(obj_interact)




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("up"):
		velocity.y = -speed
	elif Input.is_action_pressed("down"):
		velocity.y = speed
	elif Input.is_action_pressed("right"):
		velocity.x = speed
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
	
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
	
	if canInteract and Input.is_action_just_pressed("Interact"):
		interact.emit()
