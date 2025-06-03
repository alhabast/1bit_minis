extends Node2D

@onready var tilemap = $TileMapLayer

func _physics_process(_delta):
	if tilemap.score >= 1:
		await get_tree().create_timer(1.0).timeout
		queue_free()
