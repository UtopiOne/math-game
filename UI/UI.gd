extends Control

var first_number: int;
var second_number: int;

var equation = "%s + %s = %s"

var enemy_number = 0
var score = 0

func _ready():
	first_number = randi() % 10
	second_number = randi() % 10
	
func _process(delta):
	$Equation.text = equation % [first_number, second_number, Enemy.corresponding_number]
	
	if Enemy.corresponding_number.left(Enemy.corresponding_number.length()) != str(first_number + second_number).left(Enemy.corresponding_number.length()):
		score -=1
		$Score.text = str(score)
		Enemy.corresponding_number = ''
		
		first_number = randi() % 10
		second_number = randi() % 10
	
	if int(Enemy.corresponding_number) == first_number + second_number:
		score += 1
		$Score.text = str(score)
		Enemy.corresponding_number = ''
		
		first_number = randi() % 10
		second_number = randi() % 10
		
	if score < 0:
		get_tree().paused = true
		$RestartButton.show()

func _on_restart_button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	$RestartButton.hide()
