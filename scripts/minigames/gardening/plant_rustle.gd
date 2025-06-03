extends Area2D

@onready var anim = $AnimationPlayer

@onready var bug = $Bug
@onready var scoreboard = $".."
@onready var particle = $CPUParticles2D


#plays rustle animation,kills any present bugs and adds 1 to our score counter
func _mouse_enter():
	anim.play("rustle")
	if bug != null:
		particle.emitting = 1
		scoreboard.score += 1
		bug.free()
