extends Sprite

var velocity = Vector2()
var velocity_random = 0
func _process(delta):
	velocity.y = 3
	global_position += 200 * velocity * delta
	if global_position.y > 650:
		queue_free()


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		Global.health -= 1
		queue_free()
	elif area.is_in_group("Player_damager"):
		queue_free()

