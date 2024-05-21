extends Control

var player_health
var player_max_health
var enemy_health
var enemy_max_health

func _ready():
	setHealthText()
	pass


func _on_player_health_changed(max_health, current_health):
	player_max_health = max_health
	player_health = current_health
	$HealthBar.value = player_health
	$HealthBar.max_value = player_max_health
	print(str(player_health) + " / " + str(player_max_health))
	setHealthText()

func setHealthText():
	$HealthBar/HealthNumber.text = str(player_health)
