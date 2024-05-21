extends Node2D

var max_health = 150
var health = max_health
var current_abilities_dict

# Emits to the HealthBar UI element
signal health_changed(max_health, current_health)

func _ready():
	health_changed.emit(max_health,health)
	PopulateCurrentAbilities()

func attack():
	pass

func takeDamage(damage):
	health -= damage
	health_changed.emit(max_health, health)

# This signal comes from the DamageButton
func _on_damge_button_pressed():
	takeDamage(20)
	if health < 0:
		print("You have died")
		health = max_health
		health_changed.emit(max_health, health)

func _on_heal_button_pressed():
	health += 10
	if health > max_health:
		health = max_health
	health_changed.emit(max_health, health)

func PopulateCurrentAbilities():
	current_abilities_dict = Abilities.ability_dict
	print(str(current_abilities_dict))
