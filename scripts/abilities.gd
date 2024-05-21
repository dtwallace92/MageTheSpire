extends Node
var ability_dict

func _ready():
	populateAbilities()

func populateAbilities():
	ability_dict = {
		#SpellName: Damage, targets, accuracy
		"MagicMissile": {
			"Name": "Magic Missile",
			"Level": "1",
			"Damage": "20",
			"Targets": "1", 
			"Accuracy": "100"
			},
		"FireBolt": {
			"Name": "Fire Bolt",
			"Level": "0",
			"Damage": "10",
			"Targets": "1", 
			"Accuracy": "80"
			}
		}
