extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 180
var vel = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	

func _fixed_process(delta):
		var input = Vector2(0,0)
		input.x = Input.is_action_pressed("ui_right") - Input.is_action_pressed("ui_left")
		input.y = Input.is_action_pressed("ui_down") - Input.is_action_pressed("ui_up")
		vel = input.normalized() * speed
		set_pos(get_pos() + vel * delta)




