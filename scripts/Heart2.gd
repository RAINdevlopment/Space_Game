extends Sprite

func _process(_delta):
	if Global.health >= 2:
		visible = true
	else:
		visible = false
