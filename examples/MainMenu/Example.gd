extends Node2D


# Create an instance of MainMenu
var main_menu = preload("res://addons/MainMenu/MainMenu.tscn").instance()

func _ready() -> void:
	# Add two buttons: "Start" and "Exit"
	# and bind them with "on_start" and "on_exit"
	# methods of "self" (this) object respectfully
	main_menu.add_button("Start", self, "on_start")
	main_menu.add_button("Exit", self, "on_exit")
	# add to the current scene as a child
	add_child(main_menu)
	# by default Menu will not be visible so "show()" method has to be called
	main_menu.show()

#Define two methods to bind them with buttons:
func on_start():
	main_menu.hide()

func on_exit():
	get_tree().quit()
