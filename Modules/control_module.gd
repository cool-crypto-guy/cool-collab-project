extends Module
class_name ControlModule


#checks for an action
func check_for_action(action_name : String) -> bool :
	for action in get_entity().get_available_actions() :
		if action.get_method() == action_name : return true
	return false

#checks for an action and if it finds it, it calls it
func check_and_call_action(action_name : String, arguments : Array = []) -> bool :
	for action in get_entity().get_available_actions() :
		if action.get_method() == action_name :
			action.callv(arguments)
			return true
	return false
