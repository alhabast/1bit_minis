extends Node2D

const winscore = 12
var score = 0

#checks if score is high enough to win
func _process(_delta):
	if score >= winscore:
		await get_tree().create_timer(1.0).timeout
		queue_free()
