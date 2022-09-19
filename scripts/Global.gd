extends Node
var metor_speed = 200
var health = 3
var points = 0
var node_creation_parent = null
func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
