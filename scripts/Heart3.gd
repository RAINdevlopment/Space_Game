extends Sprite


func _process(_delta):
	if Global.health >= 1:
		visible = true
	else:
		visible = false
