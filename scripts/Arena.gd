extends Node2D
export(Array, PackedScene) var metors
func _ready():
	Global.node_creation_parent = self
func _exit_tree():
	Global.node_creation_parent = null
func _on_metor_spawn_timeout():
	var metor_postion = Vector2(rand_range(10,1014), rand_range(-55, -20))
#	while metor_postion.y < -20 and metor_postion.y > -55:
#		metor_postion = Vector2(rand_range(-160,670), rand_range(-90, 390))
	var metor_number = round(rand_range(0, metors.size() - 1))
	var node_to_spawn = metors[metor_number]
	var metor = Global.instance_node(node_to_spawn, metor_postion, self)
	var speed_random = round(rand_range(0, 2))
	if speed_random == 0:
		metor.velocity_random = 0.7
	elif speed_random == 1:
		metor.velocity_random = 0.5
	elif speed_random == 2:
		metor.velocity_random = 1
	if $metor_spawn.wait_time > 0.8:
		$metor_spawn.wait_time *= 0.97


func _on_Difficulty_mulriplyer_timeout():
	if $metor_spawn.wait_time > 0.8:
		Global.metor_speed += 3
		$metor_spawn.wait_time -=  0.05
