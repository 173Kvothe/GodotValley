extends Node2D

@export var cell_size := Vector2(16, 16)  # match your tile size!
@export var grid_color := Color(1, 0, 0, 0.35)

func _draw():
	var size = get_viewport_rect().size
	for x in range(0, int(size.x) + int(cell_size.x), int(cell_size.x)):
		draw_line(Vector2(x, 0), Vector2(x, size.y), grid_color, 1.0)
	for y in range(0, int(size.y) + int(cell_size.y), int(cell_size.y)):
		draw_line(Vector2(0, y), Vector2(size.x, y), grid_color, 1.0)
