extends Sprite

func _process(_delta):
	if Global.health >= 3:
		visible = true
	else:
		visible = false
