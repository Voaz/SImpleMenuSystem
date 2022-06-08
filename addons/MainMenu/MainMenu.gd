extends CanvasLayer

export var button_size: Vector2
var spacer_length = 10

func add_button(title, bind_object, bind_handler_name) -> void:
	var b: Button = Button.new()
	b.text = title
	b.name = str(title)
	b.rect_min_size = button_size
	$VBoxContainer.add_child(b)
	b.connect("pressed", bind_object, bind_handler_name)

func add_label(text) -> void:
	var label: Label = Label.new()
	label.text = text
	label.align = Label.ALIGN_CENTER
	label.valign = Label.ALIGN_CENTER
	label.rect_min_size = Vector2(100, 20)
	$VBoxContainer.add_child(label)

func add_spacer(amount) -> void: #add empty lines
	var c: Container = Container.new()
	c.rect_min_size = Vector2(0, spacer_length * amount)
	$VBoxContainer.add_child(c)

func show():
	$VBoxContainer.visible = true

func hide():
	$VBoxContainer.visible = false
