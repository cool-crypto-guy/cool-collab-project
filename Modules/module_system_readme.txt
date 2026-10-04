

---DESCRIPTION---
	The module system is set up to give modularity to entity behaviors.
	Each entity has a list of its modules.
	All modules have _ready and _process methods called from the entity.
	These _ready and _process methods are left blank in the class description because they are meant to be overriden by the specific module.
	
	There are 2 types of modules, action modules and control modules.
	
	Action modules are meant to influence the entity directly through "action" methods.
	One example of an action module would be a movement module that would have a jump action.
	Action modules have to also overide a set_actions method that stores the action callables for later use.
	
	Control modules are meant to look at the state of the entity and react by calling actions from the action modules.
	One example of a control module would be a player AI module that would look if the jump button is pressed and if so, call the jump action.
	
	Make new action or control modules by writing a script that inherits either class and overrides _ready and _process.
	Then store it in its respective folder.
	
	
