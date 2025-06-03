extends AnimatedSprite2D

var speed = 50

@onready var ray_cast_2d = $RayCast2D

#randomises starting rotation
func _ready():
	set_physics_process(true)
	speed *= randf_range(.5,2)
	rotation_degrees += randf()*360

#moves bug and keeps in boundary
func _physics_process(delta):
	if not ray_cast_2d.is_colliding():
		rotation_degrees += randf()*180
	position += transform.y * speed * delta
