extends Sprite
var velocity = Vector2()
var velocity_random = 0
func _process(delta):
	velocity.y = velocity_random
	global_position += Global.metor_speed * velocity * delta
	if global_position.y > 650:
		queue_free()


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		Global.health -= 1
		queue_free()
		if Global.health == 0:
			yield(get_tree().create_timer(0.5), "timeout")
			get_tree().reload_current_scene()
	
