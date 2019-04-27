extends KinematicBody2D

var velocidad = Vector2();

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	# Detecta que botón se presiona y modifica la velocidad
	if Input.is_action_pressed("ui_left"):
		velocidad.x -= 40
		rotation_degrees = -45
	if Input.is_action_pressed("ui_right"):
		velocidad.x += 40
		rotation_degrees = 45

	# Detecta cuando los botones se sueltan
	if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		velocidad.x = 0
		rotation_degrees = 0
	
	# Esta funcion permite mover al personaje aplicando direccion y fuerza
	# segun indica el vector velocidad
	move_and_slide(velocidad)
