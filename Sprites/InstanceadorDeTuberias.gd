extends Node2D

var tuberias : Array
var control = 0

func _ready():
	for tubo in $tuberias.get_children():
		tuberias.append(tubo)

func _on_timer_timeout():
		randomize()
		tuberias[control].position = Vector2($ArribaSpawn.position.x, randf_range($ArribaSpawn.position.y, 
		$AbajoSpawn.position.y))
		siguiente()


func siguiente():
	if control < tuberias.size()-1:
		control += 1
	else:
		control = 0



