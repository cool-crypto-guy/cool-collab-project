extends ActionModule
class_name PlayerMovement


@export var speed : float
@export var jump_velocity : float

func set_actions() -> void:
	actions = []
	
	actions.append(jump)
	actions.append(move)

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	#add gravity
	if not get_entity().is_on_floor():
		get_entity().velocity += get_entity().get_gravity() * delta

func jump() -> void :
	get_entity().velocity.y = -jump_velocity

func move(direction : float) -> void :
	if direction:
		get_entity().velocity.x = direction * speed
	else:
		get_entity().velocity.x = move_toward(get_entity().velocity.x, 0, speed)
