extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var mm = preload("res://MainMenu/MainMenu.tscn")
var main_menu

func _ready() -> void:
	main_menu = mm.instance()
	main_menu.add("Start", self, "on_start")
	main_menu.add("Exit", self, "on_exit")
	add_child(main_menu)
	main_menu.show()

func on_start():
	main_menu.hide()
	pass
func on_exit():
	get_tree().quit()
