extends TileMapLayer

var score = 0
const radius = 1
var tilearray = [0]
@onready var cloth = $"../RigidBody2D"

func _process(_delta):
	var tile :Vector2i = local_to_map(cloth.global_position/scale)
	tilearray = [
		tile,
		Vector2i(tile.x+radius,tile.y),
		Vector2i(tile.x-radius,tile.y),
		Vector2i(tile.x,tile.y+radius),
		Vector2i(tile.x,tile.y-radius),
		Vector2i(tile.x+radius,tile.y+radius),
		Vector2i(tile.x-radius,tile.y-radius),
		Vector2i(tile.x+radius,tile.y-radius),
		Vector2i(tile.x-radius,tile.y+radius),
		Vector2i(tile.x-radius-radius,tile.y),
		Vector2i(tile.x+radius+radius,tile.y),
		Vector2i(tile.x,tile.y+radius+radius),
		Vector2i(tile.x,tile.y-radius-radius),
	]
	for iteration in tilearray: 
		set_cell(iteration,0)
	var usedcells = get_used_cells()
	if usedcells == []:
		score += 1
