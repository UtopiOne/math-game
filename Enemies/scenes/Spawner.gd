extends Node2D

var preloadedEnemies = [
	preload("res://Enemies/scenes/0zero.tscn"),
	preload("res://Enemies/scenes/1one.tscn"),
	preload("res://Enemies/scenes/2two.tscn"),
	preload("res://Enemies/scenes/3three.tscn"),
	preload('res://Enemies/scenes/4four.tscn'),
	preload('res://Enemies/scenes/5five.tscn'),
	preload('res://Enemies/scenes/6six.tscn'),
	preload('res://Enemies/scenes/7seven.tscn'),
	preload('res://Enemies/scenes/8eight.tscn'),
	preload('res://Enemies/scenes/9nine.tscn'),
]

onready var spawnTimer := $SpawnTimer

var nextSpawnTimer := .5

func _ready():
	randomize()
	spawnTimer.start(nextSpawnTimer)

func _on_SpawnTimer_timeout():
	var viewRect = get_viewport_rect()
	var yPos = rand_range(viewRect.position.y, viewRect.end.y)
	var enemyPreload = preloadedEnemies[randi() % preloadedEnemies.size()]
	var enemy = enemyPreload.instance()
	enemy.position = Vector2(position.x, yPos)
	get_tree().current_scene.add_child(enemy)
	
	spawnTimer.start(nextSpawnTimer)
