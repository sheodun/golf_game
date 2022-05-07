extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (float) var max_putt_speed = 2.0
var init_click = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _input(event):
	if(event.is_action_pressed("left_click")):
		init_click = get_global_mouse_position()
	if(event.is_action_released("left_click")):
		var impulse = get_global_mouse_position()-init_click
		var length = impulse.length()
		length = clamp(length, 0, max_putt_speed)
		impulse = -impulse.normalized() * length
		apply_impulse(Vector2.ZERO, impulse)


func _physics_process(delta):
	pass
