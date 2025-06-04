extends Node2D

@onready var tilemap = $TileMapLayer

func _physics_process(_delta):
	if tilemap.score >= 1:
		get_node("winlabel").show()
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")