extends Node2D

var preloadedEnemies = [
	preload("res://Enemies/scenes/0.tscn"),
	preload("res://Enemies/scenes/1.tscn"),
	preload("res://Enemies/scenes/2.tscn"),
	preload("res://Enemies/scenes/3.tscn"),
	preload("res://Enemies/scenes/4.tscn"),
	preload("res://Enemies/scenes/5.tscn"),
	preload("res://Enemies/scenes/6.tscn"),
	preload("res://Enemies/scenes/7.tscn"),
	preload("res://Enemies/scenes/8.tscn"),
	preload("res://Enemies/scenes/9.tscn")
]

@onready var spawnTimer := $SpawnTimer

var nextSpawnTimer := .25

func _ready():
	randomize()
	spawnTimer.start(nextSpawnTimer)

func _on_SpawnTimer_timeout():
	var viewRect = get_viewport_rect()
	var yPos = randf_range(viewRect.position.y, viewRect.end.y)
	var enemyPreload = preloadedEnemies[randi() % preloadedEnemies.size()]
	var enemy = enemyPreload.instantiate()
	
	enemy.position = Vector2(position.x, yPos)
	get_tree().current_scene.add_child(enemy)
	
	spawnTimer.start(nextSpawnTimer)
