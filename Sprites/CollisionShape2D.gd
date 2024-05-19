extends CollisionShape2D


func _on_pipes_body_entered(body: Node):
	if body.is_in_group("pajarito"):
		body.call_deferred("die")
