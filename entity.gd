extends CharacterBody2D
class_name Entity


#set the modules here
@export var action_modules : Array[ActionModule] = []
@export var control_modules : Array[ControlModule] = []

#gets the available actions from the action nodes
var available_actions : Array[Callable] = []

#syncs available_actions to the action nodes
func refresh_available_actions() -> void :
	available_actions = []
	for module in action_modules :
		available_actions.append_array(module.get_actions())

#helper method
func get_available_actions() -> Array[Callable] :
	return available_actions

#default godot signal
func _ready() -> void:
	#set all modules entity reference to self and run their ready
	for module in action_modules :
		module.set_entity(self)
		module._ready()
		
		#store the action modules action callables
		module.set_actions()
	
	for module in control_modules :
		module.set_entity(self)
		module._ready()
	
	#sync available_actions to the action nodes
	refresh_available_actions()
	

#default godot signal
func _process(delta: float) -> void:
	#run modules process
	for module in action_modules :
		module._process(delta)
	for module in control_modules :
		module._process(delta)
	

@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:
	move_and_slide()
