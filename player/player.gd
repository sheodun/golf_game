extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (float) var bounciness = 0.3


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	set_bounce(bounciness)
	var kick = Vector2(100, -200.0)
	var offset = Vector2(0.0, 0.0)
	apply_impulse(offset, kick)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _physics_process(delta):
	pass
