extends Control

var current_abilities_dict
var SpellsPopupMenu:= PopupMenu.new()

func _ready():
	create_spell_buttons()
	

func create_spell_buttons():
	current_abilities_dict = Abilities.ability_dict
	for i in current_abilities_dict:
		var value = current_abilities_dict[i]
		var spell_name = value.get('Name')
		var spell_level = value.get('Level')
		var button_name = ('Level ' + spell_level + ' Spells')
		
		# Set the name of the button according to spell level
		$MenuBar.set_menu_title(int(spell_level), button_name)
		# Set the name of the spells
		$MenuBar.get_menu_popup(int(spell_level)).add_item(spell_name)
		#$MenuBar/Popup04.add_sibling(get_node("MenuBar/Popup04"))
		#print(str($MenuBar.get_menu_popup(int(i)).item_count))
		$MenuBar/Popup03.queue_free()
		print("Popup3 deleted")
		$MenuBar.add_child(SpellsPopupMenu, true)
		$MenuBar.get_child($MenuBar.get_menu_count() - 1).name = button_name
		print($MenuBar.get_child($MenuBar.get_menu_count() - 1))
#		if $MenuBar.get_menu_popup(int(i)).item_count == 0:
#			$MenuBar.get_menu_popup(int(i)).visible = false
