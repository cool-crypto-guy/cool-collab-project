extends Module
class_name ActionModule


#stores a list of the actions posessed by the action node for the control node
var actions : Array[Callable] = []

#helper method
func get_actions() -> Array[Callable] :
	return actions

#function that gets overrided by specific module
func set_actions() -> void:
	pass
