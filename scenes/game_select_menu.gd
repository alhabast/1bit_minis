extends Control



func _on_bulb_game_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/BulbCleanerMiniGame.tscn")

func _on_bug_game_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/GardeningMiniGame/GardeningMiniGame.tscn")


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
