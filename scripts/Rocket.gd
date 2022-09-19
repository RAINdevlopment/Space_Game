extends Sprite
var speed = 300
var velocity = Vector2()
var health = 3
func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	global_position += speed * velocity * delta
	global_position.x = clamp(global_position.x, 30,996)
	if Global.health == 0:
		queue_free()




func _on_Timer_timeout():
	Global.points += 1
