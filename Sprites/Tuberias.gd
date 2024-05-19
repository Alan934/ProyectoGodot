extends Node2D

var velocidad : float = 6

func _physics_process(delta: float):
	position += Vector2.LEFT * velocidad

func _on_pipes_body_entered(body: Node):
	if body.is_in_group("pajarito"):
		body.call_deferred("die")
