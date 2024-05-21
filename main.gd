extends Node2D

var MAX_HEALTH = 100
var health = MAX_HEALTH


func _ready():
	#$UserInterface/HealthBar.value = MAX_HEALTH
	pass

func _input(event):
	if event.is_action_pressed("ui_accept"):
		damage()
		print("space bar pressed")

func damage():
	var target 
	health -= 20
	if health < 0:
		health = MAX_HEALTH

func heal():
	if health < 100:
		health += 10
		if health > MAX_HEALTH:
			health = MAX_HEALTH
