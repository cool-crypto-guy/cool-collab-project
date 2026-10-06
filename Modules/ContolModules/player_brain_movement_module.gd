extends ControlModule
class_name BasicMovement


func _ready() -> void:
	pass # Replace with function body.

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	#handle moving
	check_and_call_action("move", [Input.get_axis("ui_left", "ui_right")])
	
	#handle jumping
	if Input.is_action_just_pressed("ui_accept") and get_entity().is_on_floor() :
		check_and_call_action("jump")
