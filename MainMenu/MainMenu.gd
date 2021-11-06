extends CanvasLayer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export var button_size: Vector2

func add(title, obj, handler_name) -> void:
	var b: Button = Button.new()
	b.text = title
	b.name = str(title)
	b.rect_min_size = button_size
	$VBoxContainer.add_child(b)
	b.connect("pressed", obj, handler_name)

func show():
	pass

func hide():
	queue_free()
	pass

