extends CanvasLayer

export var button_size: Vector2


func add_button(title, bind_object, bind_handler_name) -> void:
	var b: Button = Button.new()
	b.text = title
	b.name = str(title)
	b.rect_min_size = button_size
	$VBoxContainer.add_child(b)
	b.connect("pressed", bind_object, bind_handler_name)

func show():
	$VBoxContainer.visible = true

func hide():
	$VBoxContainer.visible = false
