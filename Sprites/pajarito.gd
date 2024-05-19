extends RigidBody2D
func _ready():
	add_to_group("pajarito")

var velocidadSalto : float = 450
var esta_vivo = true

func die():
	esta_vivo = false
	print("Game Over")
	get_tree().reload_current_scene()

func flap(state: PhysicsDirectBodyState2D):
	state.linear_velocity = Vector2.UP * velocidadSalto

func _integrate_forces(state: PhysicsDirectBodyState2D):
	if not esta_vivo:
		return 0
	if Input.is_action_just_pressed("flap"):
		flap(state)
