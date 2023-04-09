extends Node

@export var enemy_scene: PackedScene

func _ready():
	randomize()
	process_mode = Node.PROCESS_MODE_PAUSABLE
