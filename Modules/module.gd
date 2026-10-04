extends Resource
class_name Module


var entity : Entity

#store the entity the module alter it
func set_entity(new_entity : Entity) -> void:
	entity = new_entity

#function that gets overrided by specific module
func _ready() -> void:
	pass

#function that gets overrided by specific module
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass

func get_entity() -> Entity :
	return entity
